part of 'onboarding_welcome_bloc.dart';

abstract class WelcomeOnboardingEvent extends BaseEvent {}

@freezed
class GetStartButtonPressed extends WelcomeOnboardingEvent with _$GetStartButtonPressed {
  const factory GetStartButtonPressed() = _GetStartButtonPressed;
}
