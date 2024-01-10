part of 'select_participants_bloc.dart';

abstract class SelectParticipantsEvent extends BaseEvent {}

@freezed
class SearchUser extends SelectParticipantsEvent with _$SearchUser {
  const factory SearchUser(String query) = _SearchUser;
}

@freezed
class UpdateSearchedUsers extends SelectParticipantsEvent with _$UpdateSearchedUsers {
  const factory UpdateSearchedUsers(List<User> users) = _UpdateSearchedUsers;
}

@freezed
class AddUser extends SelectParticipantsEvent with _$AddUser {
  const factory AddUser(User user) = _AddUser;
}

@freezed
class RemoveUser extends SelectParticipantsEvent with _$RemoveUser {
  const factory RemoveUser(User user) = _RemoveUser;
}
