import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../core/configs/di/di.dart';
import '../../core/utils/log_utils.dart';
import '../../domain/entities/entities.dart';
import '../models/chat/chat_categories_enum.dart';
import '../models/helper/avnon_datasource_helper.dart';
import '../models/onboarding_step_data.dart';
import '../models/user_data.dart';
import 'app_preferences.dart';
import 'gateway/gateway.dart';

@lazySingleton
class UserDataSource {
  UserDataSource(this._authenticatedClient);

  final AuthenticatedRestApiClient _authenticatedClient;

  Future<UserData> getCurrentUserProfile() async {
    final token = await (await getIt.getAsync<AppPreferences>()).getAccessToken();
    if (kDebugMode) {
      LogUtils.getLogger('AccessToken').i(token);
    }

    return _authenticatedClient.get(
      '/user/profile',
      decoder: UserData.fromJson,
      queryParameters: <String, dynamic>{
        'withPermission': true,
        'withMentor': true,
      },
    );
  }

  Future<List<UserData>> searchUsers(String query) {
    final queryParameters = <String, dynamic>{
      'search': query,
      // static value
      'contactID': 0,
      'companyID': 1,
    };

    return _authenticatedClient.get(
      '/contact',
      queryParameters: queryParameters,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
      decoder: UserData.fromJson,
    );
  }

  Future<List<UserData>> getCurrentContact(String contactID) {
    final queryParameters = <String, dynamic>{
      'search': 0,
      // static value
      'contactID': contactID,
      'companyID': 0,
    };

    return _authenticatedClient.get(
      '/contact',
      queryParameters: queryParameters,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
      decoder: UserData.fromJson,
    );
  }

  Future<UserData> updatePersonalInformation({
    required String firstName,
    required String surName,
    required Country country,
    required String city,
    required String phone,
    required String userId,
    required String contactId,
    required String userGroupID,
    required String gender,
  }) {
    final body = <String, dynamic>{
      'city': city,
      'countryID': country.countryID,
      'firstName': firstName,
      'surname': surName,
      'mobileNumber': phone,
      'userID': userId,
      'contactID': contactId,
      'userGroupID': userGroupID,
      'disabled': false,
      'gender': gender,
    };

    return _authenticatedClient.put(
      '/user',
      body: body,
      decoder: UserData.fromJson,
    );
  }

  Future<void> updateContact({
    required String firstName,
    required String surName,
    required Country country,
    required String city,
    required String phone,
    required String linkedInProfile,
    required String aboutYourself,
    required String userId,
    required String contactId,
    required String gender,
  }) {
    final body = <String, dynamic>{
      'city': city,
      'country': country.country,
      'countryID': country.countryID,
      'firstName': firstName,
      'mobileNumber': phone,
      'headline': aboutYourself,
      'surname': surName,
      'linkedIn': linkedInProfile,
      'userID': userId,
      'contactID': contactId,
      'gender': gender,
    };

    return _authenticatedClient.put(
      '/contact',
      body: body,
    );
  }

  Future<String> uploadProfilePhoto({
    required File file,
    required String contactID,
  }) async {
    final query = {
      'documentCategoryID': DocumentLinkCategory.profilePhoto.value,
      'referenceID': contactID,
      'documentUploadedByID': contactID,
      'documentFolderID': 1,
      'reference2ID': 0,
      'IsStream': false,
      'contactID': 0,
      'companyID': 0,
    };

    final body = {'file': file};

    final listResult = await _authenticatedClient.postMultiForm(
      '/Document',
      queryParameters: query,
      body: body,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
      decoder: (data) => AvnonDataSourceHelper.addBlobStoragePrefix(data['documentPath']),
    );

    return listResult.first;
  }

  Future<void> onboarding(String userID) {
    final body = <String, dynamic>{
      'userID': userID,
    };

    return _authenticatedClient.put(
      '/User/onboarding',
      body: body,
    );
  }

  Future<UserData> updateCompanyInformation({
    required String companyName,
    required String companyID,
    required String userId,
    required String contactId,
    required String userGroupID,
  }) {
    final body = <String, dynamic>{
      'companyID': companyID,
      'companyName': companyName,
      'userID': userId,
      'contactID': contactId,
      'userGroupID': userGroupID,
      'disabled': false,
    };

    return _authenticatedClient.put(
      '/user',
      body: body,
      decoder: UserData.fromJson,
    );
  }

  Future<void> updateContactCompany({
    required String companyName,
    required String companyID,
    required String userId,
    required String contactId,
    required String firstName,
    required String surName,
  }) {
    final body = <String, dynamic>{
      'companyID': companyID,
      'companyName': companyName,
      'userID': userId,
      'contactID': contactId,
      'firstName': firstName,
      'surname': surName,
    };

    return _authenticatedClient.put(
      '/contact',
      body: body,
    );
  }

  Future<OnboardingStepData> setOnboardingStep({
    required OnboardingStepEnum onboardingStep,
    required OnboardingStepStatusEnum onboardingStepStatus,
    required int userID,
  }) {
    final body = <String, dynamic>{
      'userID': userID,
      'userOnboardingStepID': onboardingStep.value,
      'userOnboardingStepResponseID': onboardingStepStatus.value,
    };

    return _authenticatedClient.post(
      '/User/onboarding',
      body: body,
      decoder: OnboardingStepData.fromJson,
    );
  }

  Future<OnboardingStepData> updateOnboardingStep({
    required OnboardingStepEnum onboardingStep,
    required OnboardingStepStatusEnum onboardingStepStatus,
    required int userID,
  }) {
    final body = <String, dynamic>{
      'userID': userID,
      'userOnboardingStepID': onboardingStep.value,
      'userOnboardingStepResponseID': onboardingStepStatus.value,
    };

    return _authenticatedClient.put(
      '/User/onboarding2',
      body: body,
      decoder: OnboardingStepData.fromJson,
    );
  }

  Future<List<OnboardingStepData>> getOnboardingStep(int userID) {
    final queryParameters = <String, dynamic>{'userID': userID};

    return _authenticatedClient.get(
      '/User/onboarding',
      queryParameters: queryParameters,
      decoder: OnboardingStepData.fromJson,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
    );
  }
}
