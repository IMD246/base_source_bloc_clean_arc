part of 'chat_participants_bloc.dart';

abstract class ChatParticipantsEvent extends BaseEvent {}

class GetAllMembers extends ChatParticipantsEvent {}

@freezed
class AddMembers extends ChatParticipantsEvent with _$AddMembers {
  const factory AddMembers({
    required List<User> members,
  }) = _AddMembers;
}

@freezed
class RemoveMember extends ChatParticipantsEvent with _$RemoveMember {
  const factory RemoveMember({
    required ConversationMember member,
  }) = _RemoveMember;
}
