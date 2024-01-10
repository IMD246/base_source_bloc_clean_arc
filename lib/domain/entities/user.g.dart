// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int?,
      contactID: json['contactID'] as int?,
      companyID: json['companyID'] as int?,
      countryID: json['countryID'] as int?,
      city: json['city'] as String?,
      companyName: json['companyName'] as String?,
      dateActivated: json['dateActivated'] as String?,
      dateofBirth: json['dateofBirth'] as String?,
      disabled: json['disabled'] as bool?,
      emailAddress: json['emailAddress'] as String?,
      firstName: json['firstName'] as String?,
      sortName: json['sortName'] as String?,
      gender: json['gender'] as String?,
      homeAddress: json['homeAddress'] as String?,
      languageID: json['languageID'] as int?,
      mobileNumber: json['mobileNumber'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      raceID: json['raceID'] as int?,
      subscriptionID: json['subscriptionID'] as int?,
      surname: json['surname'] as String?,
      telephoneNumberHome: json['telephoneNumberHome'] as String?,
      telephoneNumberOffice: json['telephoneNumberOffice'] as String?,
      userGroupID: json['userGroupID'] as int?,
      group: json['group'] as String?,
      totalLogins: json['totalLogins'] as int?,
      timeZoneID: json['timeZoneID'] as int?,
      currencyID: json['currencyID'] as int?,
      onboarding: json['onboarding'] as bool? ?? false,
      publicProfile: json['publicProfile'] as bool? ?? false,
      currency: json['currency'] as String?,
      currencySymbol: json['currencySymbol'] as String?,
      departmentID: json['departmentID'] as int?,
      divisionID: json['divisionID'] as int?,
      companyLogo: json['companyLogo'] as String?,
      popiaWaiverAccepted: json['popiaWaiverAccepted'] as bool? ?? false,
      marketingOptin: json['marketingOptin'] as bool?,
      registrationBaseURL: json['registrationBaseURL'] as String?,
      timezoneID: json['timezoneID'] as int?,
      allowMessage: json['allowMessage'] as bool?,
      mentorNetworkOptIn: json['mentorNetworkOptIn'] as bool?,
      rememberMe: json['rememberMe'] as bool?,
      sendOfflineEmail: json['sendOfflineEmail'] as bool?,
      defaultCalendarIntegrationID:
          json['defaultCalendarIntegrationID'] as int?,
      mobileVerified: json['mobileVerified'] as bool? ?? false,
      calendarConnected: json['calendarConnected'] as bool? ?? false,
      linkedIn: json['linkedIn'] as String?,
      headline: json['headline'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contactID': instance.contactID,
      'companyID': instance.companyID,
      'countryID': instance.countryID,
      'city': instance.city,
      'companyName': instance.companyName,
      'dateActivated': instance.dateActivated,
      'dateofBirth': instance.dateofBirth,
      'disabled': instance.disabled,
      'emailAddress': instance.emailAddress,
      'firstName': instance.firstName,
      'sortName': instance.sortName,
      'gender': instance.gender,
      'homeAddress': instance.homeAddress,
      'languageID': instance.languageID,
      'mobileNumber': instance.mobileNumber,
      'profilePhoto': instance.profilePhoto,
      'raceID': instance.raceID,
      'subscriptionID': instance.subscriptionID,
      'surname': instance.surname,
      'telephoneNumberHome': instance.telephoneNumberHome,
      'telephoneNumberOffice': instance.telephoneNumberOffice,
      'userGroupID': instance.userGroupID,
      'group': instance.group,
      'totalLogins': instance.totalLogins,
      'timeZoneID': instance.timeZoneID,
      'currencyID': instance.currencyID,
      'onboarding': instance.onboarding,
      'publicProfile': instance.publicProfile,
      'currency': instance.currency,
      'currencySymbol': instance.currencySymbol,
      'departmentID': instance.departmentID,
      'divisionID': instance.divisionID,
      'companyLogo': instance.companyLogo,
      'popiaWaiverAccepted': instance.popiaWaiverAccepted,
      'marketingOptin': instance.marketingOptin,
      'registrationBaseURL': instance.registrationBaseURL,
      'timezoneID': instance.timezoneID,
      'allowMessage': instance.allowMessage,
      'mentorNetworkOptIn': instance.mentorNetworkOptIn,
      'rememberMe': instance.rememberMe,
      'sendOfflineEmail': instance.sendOfflineEmail,
      'defaultCalendarIntegrationID': instance.defaultCalendarIntegrationID,
      'mobileVerified': instance.mobileVerified,
      'calendarConnected': instance.calendarConnected,
      'linkedIn': instance.linkedIn,
      'headline': instance.headline,
    };