import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/entities/entities.dart';
import '../../../../../domain/repositories/chat_repo.dart';
import '../../../../base/bloc/base_bloc.dart';

part 'chat_options_bloc.freezed.dart';
part 'chat_options_event.dart';
part 'chat_options_state.dart';

@injectable
class ChatOptionsBloc extends BaseBloc<ChatOptionsEvent, ChatOptionsState> {
  ChatOptionsBloc(this._chatRepository) : super(const ChatOptionsState()) {
    on<DeleteConversation>(_onDeleteConversation);
  }

  final ChatRepository _chatRepository;

  late final Conversation conversation;

  FutureOr<void> _onDeleteConversation(DeleteConversation event, Emitter<ChatOptionsState> emit) {
    return runBlocCatching(
      action: () async {
        await _chatRepository.deleteConversation(conversationId: conversation.discussionId);
        emit(state.copyWith(hasDeleted: true));
      },
    );
  }
}
