part of 'conversations_bloc.dart';

class ConversationsEvent extends BaseEvent {}

@freezed
class ConversationsInitial extends ConversationsEvent with _$ConversationsInitial {
  const factory ConversationsInitial() = _ConversationsInitial;
}

@freezed
class GetConversations extends ConversationsEvent with _$GetConversations {
  const factory GetConversations() = _GetConversations;
}

@freezed
class UpdateLastMessage extends ConversationsEvent with _$UpdateLastMessage {
  const factory UpdateLastMessage(int conversationId, Message message) = _UpdateLastMessage;
}

@freezed
class UpdateConversations extends ConversationsEvent with _$UpdateConversations {
  const factory UpdateConversations(List<Conversation> conversations) = _UpdateConversations;
}
