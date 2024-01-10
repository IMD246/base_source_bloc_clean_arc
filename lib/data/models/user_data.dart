import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';
import 'base/entity_mappable.dart';
import 'helper/avnon_datasource_helper.dart';
part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData implements EntityMappable<User> {
  const UserData._();

  const factory UserData({
    int? userID,
    String? city,
    int? companyID,
    String? companyName,
    int? contactID,
    int? countryID,
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
    dynamic lastLogin,
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
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

  @override
  User toEntity() {
    return User(
      id: userID,
      city: city,
      companyID: companyID,
      companyName: companyName,
      contactID: contactID,
      countryID: countryID,
      dateActivated: dateActivated,
      dateofBirth: dateofBirth,
      disabled: disabled,
      emailAddress: emailAddress,
      firstName: firstName,
      sortName: sortName,
      gender: gender,
      homeAddress: homeAddress,
      languageID: languageID,
      mobileNumber: mobileNumber,
      profilePhoto: profilePhoto != null ? AvnonDataSourceHelper.addBlobStoragePrefix(profilePhoto!) : '',
      raceID: raceID,
      subscriptionID: subscriptionID,
      surname: surname,
      telephoneNumberHome: telephoneNumberHome,
      telephoneNumberOffice: telephoneNumberOffice,
      userGroupID: userGroupID,
      group: group,
      totalLogins: totalLogins,
      timeZoneID: timeZoneID,
      currencyID: currencyID,
      onboarding: onboarding,
      publicProfile: publicProfile,
      currency: currency,
      currencySymbol: currencySymbol,
      departmentID: departmentID,
      divisionID: divisionID,
      companyLogo: companyLogo,
      popiaWaiverAccepted: popiaWaiverAccepted,
      marketingOptin: marketingOptin,
      registrationBaseURL: registrationBaseURL,
      timezoneID: timezoneID,
      allowMessage: allowMessage,
      mentorNetworkOptIn: mentorNetworkOptIn,
      rememberMe: rememberMe,
      sendOfflineEmail: sendOfflineEmail,
      defaultCalendarIntegrationID: defaultCalendarIntegrationID,
      mobileVerified: mobileVerified,
      calendarConnected: calendarConnected,
      headline: headline,
      linkedIn: linkedIn,
    );
  }
}
