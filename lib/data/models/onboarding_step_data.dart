import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';
import 'base/entity_mappable.dart';

part 'onboarding_step_data.freezed.dart';
part 'onboarding_step_data.g.dart';

@freezed
class OnboardingStepData with _$OnboardingStepData, EntityMappable<OnboardingStep> {
  const OnboardingStepData._();
  const factory OnboardingStepData({
    int? userID,
    int? userOnboardingStepID,
    dynamic userOnboardingStepResponseID,
    int? inOutUserOnboardingID,
  }) = _OnboardingStepData;

  factory OnboardingStepData.fromJson(Map<String, dynamic> json) => _$OnboardingStepDataFromJson(json);

  @override
  OnboardingStep toEntity() {
    return OnboardingStep(
      userID: userID,
      userOnboardingStepID: userOnboardingStepID,
      userOnboardingStepResponseID: userOnboardingStepResponseID,
      inOutUserOnboardingID: inOutUserOnboardingID,
    );
  }
}
