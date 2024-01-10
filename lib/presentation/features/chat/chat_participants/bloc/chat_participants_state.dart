part of 'chat_participants_bloc.dart';

@freezed
class ChatParticipantsState extends BaseState with _$ChatParticipantsState {
  const ChatParticipantsState._();

  const factory ChatParticipantsState({
    @Default(false) bool isLoading,
    @Default(<ConversationMember>[]) List<ConversationMember> members,
  }) = _ChatParticipantsState;
}
