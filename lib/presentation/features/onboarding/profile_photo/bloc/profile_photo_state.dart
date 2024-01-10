part of 'profile_photo_bloc.dart';

@freezed
class ProfilePhotoState extends BaseState with _$ProfilePhotoState {
  const ProfilePhotoState._();

  factory ProfilePhotoState.initial() => const ProfilePhotoState();

  const factory ProfilePhotoState({
    @Default(false) bool isSubmitting,
    @Default('') String filePath,
    @Default('') String currentAvatar,
  }) = _ProfilePhotoState;
}
