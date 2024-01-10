// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_step_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingStepDataImpl _$$OnboardingStepDataImplFromJson(
        Map<String, dynamic> json) =>
    _$OnboardingStepDataImpl(
      userID: json['userID'] as int?,
      userOnboardingStepID: json['userOnboardingStepID'] as int?,
      userOnboardingStepResponseID: json['userOnboardingStepResponseID'],
      inOutUserOnboardingID: json['inOutUserOnboardingID'] as int?,
    );

Map<String, dynamic> _$$OnboardingStepDataImplToJson(
        _$OnboardingStepDataImpl instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'userOnboardingStepID': instance.userOnboardingStepID,
      'userOnboardingStepResponseID': instance.userOnboardingStepResponseID,
      'inOutUserOnboardingID': instance.inOutUserOnboardingID,
    };
