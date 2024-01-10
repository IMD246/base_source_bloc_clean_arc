// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingStepImpl _$$OnboardingStepImplFromJson(Map<String, dynamic> json) =>
    _$OnboardingStepImpl(
      userID: json['userID'] as int?,
      userOnboardingStepID: json['userOnboardingStepID'] as int?,
      userOnboardingStepResponseID: json['userOnboardingStepResponseID'],
      inOutUserOnboardingID: json['inOutUserOnboardingID'] as int?,
    );

Map<String, dynamic> _$$OnboardingStepImplToJson(
        _$OnboardingStepImpl instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'userOnboardingStepID': instance.userOnboardingStepID,
      'userOnboardingStepResponseID': instance.userOnboardingStepResponseID,
      'inOutUserOnboardingID': instance.inOutUserOnboardingID,
    };
