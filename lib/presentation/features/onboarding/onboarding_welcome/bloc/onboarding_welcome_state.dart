part of 'onboarding_welcome_bloc.dart';

@freezed
class WelcomeOnboardingState extends BaseState with _$WelcomeOnboardingState {
  const WelcomeOnboardingState._();

  factory WelcomeOnboardingState.initial() => const WelcomeOnboardingState();

  const factory WelcomeOnboardingState({
    @Default(false) bool isSubmitting,
    @Default('') String filePath,
    @Default('') String currentAvatar,
  }) = _WelcomeOnboardingState;
}
