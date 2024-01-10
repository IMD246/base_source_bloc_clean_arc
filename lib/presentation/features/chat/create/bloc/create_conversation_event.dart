part of 'create_conversation_bloc.dart';

abstract class CreateConversationEvent extends BaseEvent {}

@freezed
class SearchUser extends CreateConversationEvent with _$SearchUser {
  const factory SearchUser(String query) = _SearchUser;
}

@freezed
class UpdateSearchedUsers extends CreateConversationEvent with _$UpdateSearchedUsers {
  const factory UpdateSearchedUsers(List<User> users) = _UpdateSearchedUsers;
}

@freezed
class AddUsers extends CreateConversationEvent with _$AddUsers {
  const factory AddUsers(List<User> users) = _AddUsers;
}

@freezed
class RemoveUser extends CreateConversationEvent with _$RemoveUser {
  const factory RemoveUser(User user) = _RemoveUser;
}

@freezed
class UpdateGroupName extends CreateConversationEvent with _$UpdateGroupName {
  const factory UpdateGroupName(String chatName) = _UpdateGroupName;
}

@freezed
class CreateConversation extends CreateConversationEvent with _$CreateConversation {
  const factory CreateConversation() = _CreateConversation;
}
