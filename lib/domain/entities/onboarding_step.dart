import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_step.freezed.dart';
part 'onboarding_step.g.dart';

@freezed
class OnboardingStep with _$OnboardingStep {
  const factory OnboardingStep({
    int? userID,
    int? userOnboardingStepID,
    dynamic userOnboardingStepResponseID,
    int? inOutUserOnboardingID,
  }) = _OnboardingStep;

  factory OnboardingStep.fromJson(Map<String, dynamic> json) => _$OnboardingStepFromJson(json);

  @override
  String toString() =>
      'OnboardingStep(userID: $userID, userOnboardingStepID: $userOnboardingStepID, userOnboardingStepResponseID: $userOnboardingStepResponseID )';
}
