part of 'select_participants_bloc.dart';

@freezed
class SelectParticipantsState extends BaseState with _$SelectParticipantsState {
  const factory SelectParticipantsState({
    @Default('') String query,
    @Default(<User>[]) List<User> selectedMembers,
    @Default(<User>[]) List<User> searchedUsers,
    @Default(false) bool isSearching,
  }) = _SelectParticipantsState;
}
