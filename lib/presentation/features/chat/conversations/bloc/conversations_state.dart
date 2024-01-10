part of 'conversations_bloc.dart';

@freezed
class ConversationsState extends BaseState with _$ConversationsState {
  const factory ConversationsState({
    required List<Conversation> conversations,
    @Default(false) bool isLoading,
  }) = _ConversationsState;

  factory ConversationsState.fromJson(Map<String, dynamic> json) => _$ConversationsStateFromJson(json);

  factory ConversationsState.initial() => const ConversationsState(conversations: []);
}
