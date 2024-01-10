part of 'personal_information_bloc.dart';

abstract class PersonalInfomationEvent extends BaseEvent {}

@freezed
class FirstNameChanged extends PersonalInfomationEvent with _$FirstNameChanged {
  const factory FirstNameChanged(String firstName) = _FirstNameChanged;
}

@freezed
class SurNameChanged extends PersonalInfomationEvent with _$SurNameChanged {
  const factory SurNameChanged(String surName) = _SurNameChanged;
}

@freezed
class PersonalInformationSubmitted extends PersonalInfomationEvent with _$PersonalInformationSubmitted {
  const factory PersonalInformationSubmitted() = _PersonalInformationSubmitted;
}

@freezed
class InitScreen extends PersonalInfomationEvent with _$InitScreen {
  const factory InitScreen() = _InitScreen;
}

@freezed
class CountryChanged extends PersonalInfomationEvent with _$CountryChanged {
  const factory CountryChanged(Country country) = _CountryChanged;
}

@freezed
class CityChanged extends PersonalInfomationEvent with _$CityChanged {
  const factory CityChanged(String city) = _CityChanged;
}

@freezed
class PhoneChanged extends PersonalInfomationEvent with _$PhoneChanged {
  const factory PhoneChanged(String phone) = _PhoneChanged;
}

@freezed
class LinkedInProfileChanged extends PersonalInfomationEvent with _$LinkedInProfileChanged {
  const factory LinkedInProfileChanged(String linkedInProfile) = _LinkedInProfileChanged;
}

@freezed
class AboutYourselfChanged extends PersonalInfomationEvent with _$AboutYourselfChanged {
  const factory AboutYourselfChanged(String aboutYourself) = _AboutYourselfChanged;
}

@freezed
class GenderChanged extends PersonalInfomationEvent with _$GenderChanged {
  const factory GenderChanged(Gender gender) = _GenderChanged;
}
