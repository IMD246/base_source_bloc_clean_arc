import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../domain/entities/entities.dart';
import '../../../../../../domain/repositories/chat_repo.dart';
import '../../../../base/bloc/base_bloc.dart';

part 'chat_participants_bloc.freezed.dart';
part 'chat_participants_event.dart';
part 'chat_participants_state.dart';

@injectable
class ChatParticipantsBloc extends BaseBloc<ChatParticipantsEvent, ChatParticipantsState> {
  ChatParticipantsBloc(this._chatRepository) : super(const ChatParticipantsState()) {
    on<GetAllMembers>(_onGetAllMembers);
    on<AddMembers>(_onAddMembers);
    on<RemoveMember>(_onRemoveMember);
  }

  final ChatRepository _chatRepository;

  late final Conversation conversation;

  FutureOr<void> _onGetAllMembers(GetAllMembers event, Emitter<ChatParticipantsState> emit) {
    return runBlocCatching(
      action: () async {
        emit(state.copyWith(isLoading: true));
        final members = await _chatRepository.getConversationMembers(conversationId: conversation.discussionId);
        emit(state.copyWith(members: members));
      },
      doOnSuccessOrError: () async => emit(state.copyWith(isLoading: false)),
    );
  }

  FutureOr<void> _onAddMembers(AddMembers event, Emitter<ChatParticipantsState> emit) {
    return runBlocCatching(
      action: () async {
        emit(state.copyWith(isLoading: true));
        for (final member in event.members) {
          await _chatRepository.addMemberToConversation(
            conversationId: conversation.discussionId,
            currentUserContactId: currentUser.contactID!,
            memberContactId: member.contactID!,
          );
        }

        final members = event.members
            .map(
              (user) => ConversationMember(
                contactID: user.contactID!,
                firstName: user.firstName,
                surname: user.surname,
                emailAddress: user.emailAddress,
                profilePhoto: user.profilePhoto,
              ),
            )
            .toList();

        emit(state.copyWith(members: [...state.members, ...members]));
      },
      doOnSuccessOrError: () async => emit(state.copyWith(isLoading: false)),
    );
  }

  FutureOr<void> _onRemoveMember(RemoveMember event, Emitter<ChatParticipantsState> emit) {
    return runBlocCatching(
      action: () async {
        emit(state.copyWith(isLoading: true));
        await _chatRepository.removeMemberFromConversation(
          conversationId: conversation.discussionId,
          memberContactId: event.member.contactID,
        );

        final members = state.members.where((member) => member.contactID != event.member.contactID).toList();
        emit(state.copyWith(members: members));
      },
      doOnSuccessOrError: () async => emit(state.copyWith(isLoading: false)),
    );
  }
}
