import 'dart:async';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/configs/di/di.dart';
import '../../../../../core/constants/storage_constants.dart';
import '../../../../../domain/entities/entities.dart';
import '../../../../../domain/repositories/repositories.dart';
import '../../../../base/bloc/base_bloc.dart';
import '../../../../common_blocs/socket_notification/socket_notification_bloc.dart';

part 'conversations_bloc.freezed.dart';
part 'conversations_bloc.g.dart';
part 'conversations_event.dart';
part 'conversations_state.dart';

@injectable
class ConversationsBloc extends BaseBloc<ConversationsEvent, ConversationsState> with HydratedMixin {
  ConversationsBloc(this._chatRepository) : super(ConversationsState.initial()) {
    hydrate();

    on<ConversationsInitial>(_onConversationsInitial);
    on<GetConversations>(_onGetConversations);
    on<UpdateLastMessage>(_onUpdateLastMessage);
    on<UpdateConversations>(_onUpdateConversations);
  }

  final ChatRepository _chatRepository;

  @override
  ConversationsState? fromJson(Map<String, dynamic> json) {
    return ConversationsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ConversationsState state) {
    if (state.conversations.length > CacheConstants.maxConversations) {
      List<Conversation>.from(state.conversations)
          .removeRange(CacheConstants.maxConversations, state.conversations.length);
    }

    return state.toJson();
  }

  FutureOr<void> _onConversationsInitial(ConversationsInitial event, Emitter<ConversationsState> emit) {
    add(const GetConversations());

    // TODO(tanhnv):  waiting for the connection to be established first then listen to the online users
    _listenOnlineUsers();
    // _listenNewMessageFromSocketNotification();
  }

  FutureOr<void> _onGetConversations(GetConversations event, Emitter<ConversationsState> emit) {
    if (state.conversations.isEmpty) {
      emit(state.copyWith(isLoading: true));
    }

    return runBlocCatching(
      action: () async {
        final conversations = await _chatRepository.getConversations(currentUserContactId: currentUser.contactID!);

        emit(state.copyWith(conversations: conversations, isLoading: false));
        _listenNewMessageFromSocketNotification();
      },
      doOnError: (exception) async {
        emit(state.copyWith(isLoading: false));
      },
    );
  }

  void _onUpdateLastMessage(UpdateLastMessage event, Emitter<ConversationsState> emit) {
    final conversation = state.conversations.firstWhere((element) => element.discussionId == event.conversationId);

    final updatedConversation = conversation.copyWith(
      lastMessage: event.message,
      unreadCount: 0,
      lastMessageAt: event.message.createdAt,
    );

    final updatedConversations = state.conversations
        .map((e) => e.discussionId == event.conversationId ? updatedConversation : e)
        .sorted((a, b) => b.lastMessageAt!.compareTo(a.lastMessageAt!))
        .toList();

    emit(state.copyWith(conversations: updatedConversations));
  }

  void _listenOnlineUsers() {
    addAutoDisposeItem(
      _chatRepository.onlineContactsIdChanged().listen(
        (contactIds) {
          final updatedConversations = state.conversations.map((conversation) {
            if (conversation.isDirectMessage) {
              final isOnline = contactIds.contains(conversation.targetUser!.contactID);

              return conversation.copyWith(isOnline: isOnline);
            }

            return conversation;
          }).toList();

          add(UpdateConversations(updatedConversations));
        },
      ),
    );
  }

  void _listenNewMessageFromSocketNotification() {
    void resolveNotificationState(SocketNotificationState notificationState) {
      final unreadConversations = notificationState.unreadConversations;

      if (unreadConversations.isNotEmpty) {
        final updateConversations = List<Conversation>.from(state.conversations)
            .map((conversation) => conversation.copyWith(unreadCount: 0))
            .toList();

        for (final unreadConversation in unreadConversations) {
          for (var index = 0; index < updateConversations.length; index++) {
            final conversation = updateConversations[index];
            if (conversation.discussionId == unreadConversation.parentId) {
              updateConversations[index] = conversation.copyWith(
                unreadCount: conversation.unreadCount + 1,
                lastMessage: unreadConversation.lastMessage,
                lastMessageAt: unreadConversation.lastMessageAt,
              );
            }
          }
        }

        // if the conversation is not in the list, add it
        final newConversations = unreadConversations
            .where((unreadConversation) =>
                !state.conversations.any((conversation) => conversation.discussionId == unreadConversation.parentId))
            .toList();

        add(UpdateConversations([...newConversations, ...updateConversations]));
      }
    }

    // add first time
    resolveNotificationState(getIt<SocketNotificationBloc>().state);
    addAutoDisposeItem(getIt<SocketNotificationBloc>().stream.listen(resolveNotificationState));
  }

  void _onUpdateConversations(UpdateConversations event, Emitter<ConversationsState> emit) {
    emit(state.copyWith(conversations: event.conversations));
  }
}
