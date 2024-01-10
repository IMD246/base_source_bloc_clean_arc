import 'dart:async';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter_isolate/flutter_isolate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/helpers/debouncer.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../domain/entities/base/paged_list.dart';
import '../../../../../domain/entities/entities.dart';
import '../../../../../domain/repositories/repositories.dart';
import '../../../../base/bloc/base_bloc.dart';

part 'chat_detail_bloc.freezed.dart';
part 'chat_detail_event.dart';
part 'chat_detail_state.dart';

const _kMessagesCacheKey = 'messages';

@injectable
class ChatDetailBloc extends BaseBloc<ChatDetailEvent, ChatDetailState> with HydratedMixin {
  ChatDetailBloc(this._chatRepository) : super(ChatDetailState.initial()) {
    on<ChatDetailInitiated>(_onChatDetailInitiated);
    on<GetMessages>(_onGetMessages);
    on<LoadMoreMessages>(_onLoadMoreMessages);
    on<SendMessage>(_onSendMessage);
    on<DeleteMessage>(_onDeleteMessage);
    on<ActiveEditingMessage>(_onActiveEditingMessage);
    on<UpdateMessage>(_onUpdateMessage);
    on<ActiveToReplyMessage>(_onActiveToReplyMessage);
    on<ReactMessage>(_onReactMessage);
    on<RemoveReaction>(_onRemoveReaction);
    on<AttachDocuments>(_onAttachDocuments);
    on<RemoveDocument>(_onRemoveDocument);
    on<SetTypingIndicator>(_onSetTypingIndicator);
    on<SendTypingIndicator>(_onSendTypingIndicator);
    on<NewMessageReceived>(_onNewMessageReceived);
    on<MessageEdited>(_onMessageEdited);
    on<MessageDeleted>(_onMessageDeleted);
    on<AppResumed>(_onAppResumed);
    on<AppSuspended>(_onAppSuspended);
  }

  final ChatRepository _chatRepository;

  final Debouncer _sendTypingIndicatorDebouncer = Debouncer(delay: AppDurationConstants.delaySendTypingIndicator);
  final Debouncer _stopTypingIndicatorDebouncer = Debouncer(delay: AppDurationConstants.delayStopTypingIndicator);

  late final Conversation _conversation;
  late List<ConversationMember> _members;
  Timer? _updateLastSeenTimer;

  ConversationMember? get _currentUserMember =>
      _members.firstWhereOrNull((member) => member.contactID == currentUser.contactID);

  @override
  String get id => _conversation.discussionId.toString();

  set conversation(Conversation value) {
    _conversation = value;
    // this will trigger get cached state
    hydrate();
  }

  @override
  ChatDetailState? fromJson(Map<String, dynamic> json) {
    final messages =
        (json[_kMessagesCacheKey] as List<dynamic>).map((e) => Message.fromJson(e as Map<String, dynamic>)).toList();

    return ChatDetailState.initial().copyWith(pagedMessageList: PagedList(items: messages, page: 0, pageSize: 0));
  }

  @override
  Map<String, dynamic>? toJson(ChatDetailState state) {
    final messages = List.from(state.messages);
    if (messages.length > CacheConstants.maxMessages) {
      messages.removeRange(CacheConstants.maxMessages, messages.length);
    }

    return {
      _kMessagesCacheKey: messages.map((e) => e.toJson()).toList(),
    };
  }

  Future<void> _onChatDetailInitiated(ChatDetailInitiated event, Emitter<ChatDetailState> emit) async {
    add(const GetMessages(isRefresh: true));
    _listenSocket();
    await _getDiscussionMembers();
    _setupUpdateLastSeenTimer();
  }

  FutureOr<void> _listenSocket() async {
    await _chatRepository.joinChatChannel(_conversation.discussionId);

    addAutoDisposeItem(_chatRepository.onReceivedMessage().listen((message) {
      add(NewMessageReceived(message));
    }));

    addAutoDisposeItem(_chatRepository.onMessageEdited().listen((message) {
      add(MessageEdited(message));
    }));

    addAutoDisposeItem(_chatRepository.onMessageDeleted().listen((int deletedMessageId) {
      add(MessageDeleted(deletedMessageId));
    }));

    addAutoDisposeItem(_chatRepository.onTyping().listen((TypingIndicator typingIndicator) {
      if (typingIndicator.userId == currentUser.id) {
        return;
      }

      add(SetTypingIndicator(typingIndicator));
    }));
  }

  Future<void> _getDiscussionMembers() {
    return runBlocCatching(
      action: () async {
        final member = await _chatRepository.getConversationMembers(conversationId: _conversation.discussionId);
        _members = member;
      },
    );
  }

  void _setupUpdateLastSeenTimer() {
    _updateLastSeenTimer?.cancel();
    if (_currentUserMember != null) {
      _updateLastSeenTimer = Timer.periodic(AppDurationConstants.lastSeenUpdateDuration, (_) {
        _updateLastSeen();
      });
      // Fire immediately
      _updateLastSeen();
    }
  }

  void _updateLastSeen() {
    runBlocCatching(action: () async {
      _chatRepository.updateLastSeen(
        conversationId: _conversation.discussionId,
        member: _currentUserMember!,
      );
    });
  }

  FutureOr<void> _onAppResumed(AppResumed event, Emitter<ChatDetailState> emit) {
    _setupUpdateLastSeenTimer();
  }

  FutureOr<void> _onAppSuspended(AppSuspended event, Emitter<ChatDetailState> emit) {
    _updateLastSeenTimer?.cancel();
  }

  void _onLoadMoreMessages(LoadMoreMessages event, Emitter<ChatDetailState> emit) {
    add(const GetMessages(isRefresh: false));
  }

  FutureOr<void> _onGetMessages(GetMessages event, Emitter<ChatDetailState> emit) {
    if (state.isLoading) {
      return Future.value();
    }

    emit(state.copyWith(isLoading: true));

    return runBlocCatching(
      action: () async {
        final pagedList = event.isRefresh ? PagedList<Message>.initial() : state.pagedMessageList.nextPage();

        final newMessages = await _chatRepository.getMessages(
          discussionId: _conversation.discussionId,
          pageIndex: pagedList.page,
          pageSize: pagedList.pageSize,
        );

        if (newMessages.isEmpty) {
          emit(state.copyWith(pagedMessageList: pagedList.hasReachedLastPage(), isLoading: false));

          return;
        }

        final messages = event.isRefresh ? newMessages : [...state.messages, ...newMessages];

        // update message.parentMessage by existing messages if found
        final updatedMessages = _updateParents(messages);

        emit(state.copyWith(
          pagedMessageList: pagedList.replaceAll(updatedMessages),
          isLoading: false,
        ));
      },
      doOnError: (exception) async {
        emit(state.copyWith(isLoading: false));
      },
    );
  }

  List<Message> _updateParents(List<Message> messages) {
    return messages.map((message) {
      if (message.parentMessage == null) {
        return message;
      }

      final parentMessage = messages.firstWhereOrNull((element) => element.id == message.parentMessage!.id);
      if (parentMessage == null) {
        return message;
      }

      return message.copyWith(parentMessage: parentMessage);
    }).toList();
  }

  FutureOr<void> _onSendMessage(SendMessage event, Emitter<ChatDetailState> emit) async {
    if (event.content.trim().isEmpty && state.documents.isEmpty) {
      return;
    }

    if (state.editingMessage != null) {
      return _onUpdateMessage(UpdateMessage(state.editingMessage!.copyWith(content: event.content)), emit);
    }

    return runBlocCatching(
      action: () async {
        final toReplyMessage = state.toReplyMessage;
        final documents = List<Document>.from(state.documents);

        emit(state.copyWith(toReplyMessage: null, documents: []));

        final fakeId = DateTime.now().millisecondsSinceEpoch;
        final sendingMessage = Message(
          id: fakeId,
          content: event.content,
          sender: currentUser,
          parentMessage: toReplyMessage,
          documents: documents,
          createdAt: DateTime.now(),
        );
        emit(state.replaceAllMessages([sendingMessage, ...state.messages]));

        final sentMessage = await _chatRepository.sendMessage(
          discussionId: _conversation.discussionId,
          currentUserContactId: currentUser.contactID!,
          content: event.content,
          parentMessageId: toReplyMessage?.id,
          isDirectMessage: _conversation.isGroup,
        );

        if (documents.isNotEmpty) {
          await Future.wait([
            for (int index = 0; index < documents.length; index++)
              _sendAttachment(sentMessage, currentUser, documents[index]).then(
                (documentPath) {
                  documents[index] = documents[index].copyWith(url: documentPath, isLocal: false);
                },
              ),
          ]);
        }

        final messages = state.messages.map((message) {
          if (message.id == fakeId) {
            return sentMessage.copyWith(
              parentMessage: toReplyMessage,
              documents: documents,
              createdAt: sendingMessage.createdAt,
            );
          }

          return message;
        }).toList();

        emit(
          state.copyWith(
            pagedMessageList: state.pagedMessageList.replaceAll(messages),
            toReplyMessage: null,
            editingMessage: null,
            documents: [],
          ),
        );
      },
    );
  }

  Future<String> _sendAttachment(Message sentMessage, User currentUser, Document document) async {
    // String compressedDocumentPath = document.url;

    // if (document.isMedia) {
    // compressedDocumentPath = await flutterCompute(MediaUtils.compressMediaWithIsolate, document.url);
    // }

    return _chatRepository.sendAttachment(
      messageId: sentMessage.id,
      conversationId: _conversation.discussionId,
      currentUserContactId: currentUser.contactID!,
      file: File(document.url),
    );
  }

  FutureOr<void> _onDeleteMessage(DeleteMessage event, Emitter<ChatDetailState> emit) async {
    if (!event.message.isMyMessage) {
      return;
    }

    return runBlocCatching(
      action: () async {
        await _chatRepository.deleteMessage(conversationId: _conversation.discussionId, messageId: event.message.id);
        final messages = state.messages.where((element) => element.id != event.message.id).toList();
        emit(state.replaceAllMessages(messages));
      },
    );
  }

  FutureOr<void> _onUpdateMessage(UpdateMessage event, Emitter<ChatDetailState> emit) {
    emit(state.copyWith(editingMessage: null));

    return runBlocCatching(
      action: () async {
        unawaited(_chatRepository.editMessage(
          conversationId: _conversation.discussionId,
          messageId: event.message.id,
          editedContent: event.message.content,
        ));

        final messages = state.messages.map((message) {
          if (message.id == event.message.id) {
            return event.message;
          }

          if (message.parentMessage?.id == event.message.id) {
            return message.copyWith(parentMessage: event.message);
          }

          return message;
        }).toList();

        emit(state.replaceAllMessages(messages));
      },
    );
  }

  void _onActiveEditingMessage(ActiveEditingMessage event, Emitter<ChatDetailState> emit) {
    emit(state.copyWith(editingMessage: event.message, toReplyMessage: null));
  }

  void _onActiveToReplyMessage(ActiveToReplyMessage event, Emitter<ChatDetailState> emit) {
    emit(state.copyWith(toReplyMessage: event.message, editingMessage: null));
  }

  FutureOr<void> _onReactMessage(ReactMessage event, Emitter<ChatDetailState> emit) {
    // ===== optimistic update =====

    final existedReaction =
        event.message.reactions.firstWhereOrNull((reaction) => reaction.createdBy.id == currentUser.id);
    // remove old reaction of current user if any
    if (existedReaction != null) {
      if (existedReaction.type == event.reactionType) {
        // Do nothing if it's the same type
        return Future.value();
      } else {
        add(RemoveReaction(event.message, existedReaction));
      }
    }

    final fakeId = DateTime.now().millisecondsSinceEpoch;

    var newReaction = Reaction(
      id: fakeId,
      type: event.reactionType,
      createdBy: currentUser,
    );

    var updatedMessage = _conversation.isDirectMessage
        ? event.message.copyWith(reactions: [newReaction])
        : event.message.copyWith(reactions: [newReaction, ...event.message.reactions]);

    emit(state.replaceAllMessages(
      state.messages.map((message) => message.id == event.message.id ? updatedMessage : message).toList(),
    ));
    // ===== end optimistic update =====

    return runBlocCatching(
      action: () async {
        final responseReaction = await _chatRepository.reactToMessage(
          currentUserContactId: currentUser.contactID!,
          messageId: event.message.id,
          reactionType: event.reactionType,
        );
        newReaction = newReaction.copyWith(id: responseReaction.id);

        // replace fakeId with real id
        updatedMessage = updatedMessage.copyWith(
          reactions:
              updatedMessage.reactions.map((reaction) => (reaction.id == fakeId) ? newReaction : reaction).toList(),
        );

        emit(state.replaceAllMessages(
          state.messages.map((message) => message.id == event.message.id ? updatedMessage : message).toList(),
        ));
      },
    );
  }

  FutureOr<void> _onRemoveReaction(RemoveReaction event, Emitter<ChatDetailState> emit) {
    final messages = state.messages.map((message) {
      if (message.id == event.message.id) {
        return message.copyWith(reactions: [
          ...message.reactions.where((reaction) => reaction.id != event.reaction.id),
        ]);
      }

      return message;
    }).toList();

    emit(state.replaceAllMessages(messages));

    _chatRepository.removeReaction(reactionId: event.reaction.id);
  }

  Future<void> _onAttachDocuments(AttachDocuments event, Emitter<ChatDetailState> emit) async {
    final List<Document> documents = [];
    for (final file in event.files) {
      final type = await DocumentUtils.getDocumentTypeFromFile(file);

      File? thumbnailFile;

      if (type == DocumentType.video) {
        final path = await flutterCompute(MediaUtils.getVideoThumbnailWithIsolate, file.path);
        if (path != null) {
          thumbnailFile = File(path);
        }
      }

      documents.add(
        Document(
          id: DateTime.now().millisecondsSinceEpoch,
          name: file.path.split('/').last,
          url: file.path,
          type: type,
          size: file.lengthSync(),
          isLocal: true,
          thumbnailFile: thumbnailFile,
        ),
      );
    }

    emit(state.copyWith(documents: documents));
  }

  FutureOr<void> _onRemoveDocument(RemoveDocument event, Emitter<ChatDetailState> emit) {
    final attachments = state.documents.where((element) => element.id != event.document.id).toList();
    emit(state.copyWith(documents: attachments));
  }

  // Socket

  FutureOr<void> _onSetTypingIndicator(SetTypingIndicator event, Emitter<ChatDetailState> emit) {
    if (event.typingIndicator.isTyping) {
      emit(state.copyWith(typingIndicator: event.typingIndicator));
    } else {
      emit(state.copyWith(typingIndicator: null));
    }
  }

  FutureOr<void> _onSendTypingIndicator(SendTypingIndicator event, Emitter<ChatDetailState> emit) {
    _sendTypingIndicatorDebouncer.run(() {
      _sendTypingIndicator(true);
      // Delay send false
      _stopTypingIndicatorDebouncer.run(() {
        _sendTypingIndicator(false);
      });
    });
  }

  void _sendTypingIndicator(bool isTyping) {
    _chatRepository.sendTypingIndicator(
      conversationId: _conversation.discussionId,
      user: currentUser,
      isTyping: isTyping,
    );
  }

  FutureOr<void> _onNewMessageReceived(NewMessageReceived event, Emitter<ChatDetailState> emit) {
    final messages = _updateParents([event.message, ...state.messages]);

    emit(state.replaceAllMessages(messages));
  }

  FutureOr<void> _onMessageEdited(MessageEdited event, Emitter<ChatDetailState> emit) {
    final messages = state.messages.map((message) {
      if (message.id == event.message.id) {
        return event.message;
      }

      return message;
    }).toList();

    emit(state.replaceAllMessages(messages));
  }

  void _onMessageDeleted(MessageDeleted event, Emitter<ChatDetailState> emit) {
    var messages = state.messages.where((message) => message.id != event.deletedMessageId).toList();

    messages = _updateParents(messages);

    emit(state.replaceAllMessages(messages));
  }

  @override
  Future<void> close() {
    _chatRepository.leaveChatChannel(_conversation.discussionId);
    _sendTypingIndicatorDebouncer.cancel();
    _stopTypingIndicatorDebouncer.cancel();
    _updateLastSeenTimer?.cancel();

    return super.close();
  }
}
