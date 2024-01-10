part of 'create_conversation_bloc.dart';

@freezed
class CreateConversationState extends BaseState with _$CreateConversationState {
  CreateConversationState._();

  factory CreateConversationState({
    @Default('') String chatName,
    @Default('') String query,
    @Default(<User>[]) List<User> selectedMembers,
    @Default(<User>[]) List<User> searchedUsers,
    @Default(false) bool isSearching,
    Conversation? createdConversation,
    @Default(false) bool isCreatingConversation,
  }) = _CreateConversationState;

  bool get isInitial => query.isEmpty && searchedUsers.isEmpty && selectedMembers.isEmpty;

  bool get isCreateGroupConversation => selectedMembers.length > 1;

  bool get isCanCreateConversation {
    if (selectedMembers.isEmpty) {
      return false;
    } else if (isCreateGroupConversation && isGroupNameValid) {
      return false;
    }

    return true;
  }

  bool get isGroupNameValid => chatName.isNotEmpty;
}
