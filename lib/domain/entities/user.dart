import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    int? id,
    int? contactID,
    int? companyID,
    int? countryID,
    String? city,
    String? companyName,
    String? dateActivated,
    String? dateofBirth,
    bool? disabled,
    String? emailAddress,
    String? firstName,
    String? sortName,
    String? gender,
    String? homeAddress,
    int? languageID,
    String? mobileNumber,
    String? profilePhoto,
    int? raceID,
    int? subscriptionID,
    String? surname,
    String? telephoneNumberHome,
    String? telephoneNumberOffice,
    int? userGroupID,
    String? group,
    int? totalLogins,
    int? timeZoneID,
    int? currencyID,
    @Default(false) bool onboarding,
    @Default(false) bool publicProfile,
    String? currency,
    String? currencySymbol,
    int? departmentID,
    int? divisionID,
    String? companyLogo,
    @Default(false) bool popiaWaiverAccepted,
    bool? marketingOptin,
    String? registrationBaseURL,
    int? timezoneID,
    bool? allowMessage,
    bool? mentorNetworkOptIn,
    bool? rememberMe,
    bool? sendOfflineEmail,
    int? defaultCalendarIntegrationID,
    @Default(false) bool mobileVerified,
    @Default(false) bool calendarConnected,
    String? linkedIn,
    String? headline,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  String get fullName => '$firstName $surname';

  @override
  String toString() => 'User(id: $id, contactID: $contactID, fullName: $fullName)';
}

enum Gender {
  male,
  female;

  static Gender? fromString(String? gender) {
    if (gender == 'Female') {
      return Gender.female;
    }

    if (gender == 'Male') {
      return Gender.male;
    }

    return null;
  }
}

extension GenderExt on Gender {
  String get value {
    switch (this) {
      case Gender.female:
        return 'Female';
      case Gender.male:
        return 'Male';
      default:
        return '';
    }
  }
}

enum OnboardingStepEnum {
  myProfile,
  photo,
  companyJoin,
  companyAdd,
  productAdd,
  splashScreen,
}

extension OnboardingStepExt on OnboardingStepEnum {
  int get value {
    switch (this) {
      case OnboardingStepEnum.myProfile:
        return 1;
      case OnboardingStepEnum.photo:
        return 2;
      case OnboardingStepEnum.companyJoin:
        return 3;
      case OnboardingStepEnum.companyAdd:
        return 4;
      case OnboardingStepEnum.productAdd:
        return 5;
      case OnboardingStepEnum.splashScreen:
        return 6;
      default:
        return 0;
    }
  }
}

enum OnboardingStepStatusEnum {
  underway,
  complete,
}

extension OnboardingStepStatusEnumExt on OnboardingStepStatusEnum {
  int get value {
    switch (this) {
      case OnboardingStepStatusEnum.underway:
        return 1;
      case OnboardingStepStatusEnum.complete:
        return 2;

      default:
        return 0;
    }
  }
}
