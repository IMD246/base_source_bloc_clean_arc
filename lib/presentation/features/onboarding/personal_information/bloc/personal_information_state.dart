part of 'personal_information_bloc.dart';

@freezed
class PersonalInfomationState extends BaseState with _$PersonalInfomationState {
  const PersonalInfomationState._();

  factory PersonalInfomationState.initial() => const PersonalInfomationState();

  const factory PersonalInfomationState({
    @Default('') String firstName,
    @Default('') String surName,
    @Default(null) Country? country,
    @Default('') String city,
    @Default('') String phone,
    @Default('') String linkedInProfile,
    @Default('') String aboutYourself,
    @Default(0) int submitCount,
    @Default(false) bool isSubmitting,
    @Default(null) String? errorMessage,
    @Default([]) List<Country> countries,
    @Default([]) List<City> cities,
    @Default(false) bool isLoading,
    @Default(null) Gender? gender,
  }) = _PersonalInfomationState;

  bool get hadBeenSubmitted => submitCount > 0;
  bool get isFormValid {
    return firstName.isNotEmpty &&
        surName.isNotEmpty &&
        gender != null &&
        country != null &&
        phone.isNotEmpty &&
        aboutYourself.isNotEmpty;
  }
}
