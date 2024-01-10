// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      locale: json['locale'] as String? ?? LocaleConstants.defaultLocale,
      onboardingStep: json['onboardingStep'] == null
          ? null
          : OnboardingStep.fromJson(
              json['onboardingStep'] as Map<String, dynamic>),
      currentUser: json['currentUser'] == null
          ? null
          : User.fromJson(json['currentUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'onboardingStep': instance.onboardingStep,
      'currentUser': instance.currentUser,
    };
