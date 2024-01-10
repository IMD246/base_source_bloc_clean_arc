import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/domain.dart';
import '../../../../base/bloc/base_bloc.dart';

part 'chat_media_event.dart';
part 'chat_media_state.dart';
part 'chat_media_bloc.freezed.dart';

@injectable
class ChatMediaBloc extends BaseBloc<ChatMediaEvent, ChatMediaState> {
  ChatMediaBloc(this._chatRepository) : super(const ChatMediaState()) {
    on<ChatMediaInitialEvent>(_onInitialEvent);
  }

  final ChatRepository _chatRepository;

  late Conversation _conversation;

  set conversation(Conversation conversation) {
    _conversation = conversation;
  }

  Future<FutureOr<void>> _onInitialEvent(ChatMediaInitialEvent event, Emitter<ChatMediaState> emit) async {
    emit(state.copyWith(isLoading: true));
    final documents = await _getMedias();

    emit(state.copyWith(isLoading: false, documents: documents));
  }

  Future<List<Document>> _getMedias() async {
    try {
      return await _chatRepository.getAllConversationDocuments(
        conversationId: _conversation.discussionId,
        currentUserContactId: currentUser.contactID!,
      );
    } catch (e) {
      logError(e.toString());

      return [];
    }
  }
}
