part of 'profile_photo_bloc.dart';

abstract class ProfilePhotoEvent extends BaseEvent {}

@freezed
class PhotoChanged extends ProfilePhotoEvent with _$PhotoChanged {
  const factory PhotoChanged(String filePath) = _PhotoChanged;
}

@freezed
class NextSubmitted extends ProfilePhotoEvent with _$NextSubmitted {
  const factory NextSubmitted() = _NextSubmitted;
}

@freezed
class SelectPhotoPressed extends ProfilePhotoEvent with _$SelectPhotoPressed {
  const factory SelectPhotoPressed() = _SelectPhotoPressed;
}

@freezed
class InitScreen extends ProfilePhotoEvent with _$InitScreen {
  const factory InitScreen() = _InitScreen;
}
