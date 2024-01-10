part of 'sign_up_bloc.dart';

abstract class SignUpEvent extends BaseEvent {}

@freezed
class FirstNameChanged extends SignUpEvent with _$FirstNameChanged {
  const factory FirstNameChanged(String firstName) = _FirstNameChanged;
}

@freezed
class SurNameChanged extends SignUpEvent with _$SurNameChanged {
  const factory SurNameChanged(String surName) = _SurNameChanged;
}

@freezed
class EmailChanged extends SignUpEvent with _$EmailChanged {
  const factory EmailChanged(String email) = _EmailChanged;
}

@freezed
class PasswordChanged extends SignUpEvent with _$PasswordChanged {
  const factory PasswordChanged(String password) = _PasswordChanged;
}

@freezed
class ConfirmPasswordChanged extends SignUpEvent with _$ConfirmPasswordChanged {
  const factory ConfirmPasswordChanged(String confirmPassword) = _ConfirmPasswordChanged;
}

@freezed
class IsPasswordVisibleChanged extends SignUpEvent with _$IsPasswordVisibleChanged {
  const factory IsPasswordVisibleChanged(bool isPasswordVisible) = _IsPasswordVisibleChanged;
}

@freezed
class IsConfirmPasswordVisibleChanged extends SignUpEvent with _$IsConfirmPasswordVisibleChanged {
  const factory IsConfirmPasswordVisibleChanged(bool isConfirmPasswordVisible) = _IsConfirmPasswordVisibleChanged;
}

@freezed
class SignUpSubmitted extends SignUpEvent with _$SignUpSubmitted {
  const factory SignUpSubmitted() = _SignUpSubmitted;
}
