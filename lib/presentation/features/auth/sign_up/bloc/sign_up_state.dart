part of 'sign_up_bloc.dart';

enum SignUpFailureReason {
  emailAlreadyInUse,
  unknown,
}

@freezed
class SignUpState extends BaseState with _$SignUpState {
  const SignUpState._();

  factory SignUpState.initial() => const SignUpState();

  const factory SignUpState({
    @Default('') String firstName,
    @Default('') String surName,
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    @Default(0) int submitCount,
    @Default(false) bool isSubmitting,
    @Default(false) bool isSignUpSuccess,
    SignUpFailureReason? failureReason,
  }) = _SignUpState;

  bool get isEmailValid => ValidationUtils.isValidEmail(email);

  bool get isPasswordValid => ValidationUtils.isValidPassword(password);

  bool get isPasswordMatch => password == confirmPassword;

  bool get isFormValid =>
      firstName.isNotEmpty && surName.isNotEmpty && isEmailValid && isPasswordValid && isPasswordMatch;

  bool get hadBeenSubmitted => submitCount > 0;

  bool get isEmailAlreadyInUse => failureReason == SignUpFailureReason.emailAlreadyInUse;
}
