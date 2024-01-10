import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';
import '../datasources/user_datasource.dart';
import '../providers/app_socket_provider.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._dataSource, this._appSocketProvider);

  final UserDataSource _dataSource;
  final AppSocketProvider _appSocketProvider;

  @override
  Future<User> getCurrentUserProfile() async {
    final userData = await _dataSource.getCurrentUserProfile();

    return userData.toEntity();
  }

  @override
  Future<List<User>> searchUsers(String query) async {
    final users = await _dataSource.searchUsers(query);

    // remove null contactID (cause of the API)
    final filteredUsers = users.where((user) => user.contactID != null).toList();

    return filteredUsers.map((user) => user.toEntity()).where((user) => user.id != null).toList();
  }

  @override
  Future<void> closeSocketConnection() {
    return _appSocketProvider.closeConnection();
  }

  @override
  Future<void> establishSocketConnection() {
    return _appSocketProvider.establishConnection();
  }

  @override
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
    return _dataSource.updateContact(
      aboutYourself: aboutYourself,
      city: city,
      country: country,
      firstName: firstName,
      linkedInProfile: linkedInProfile,
      phone: phone,
      surName: surName,
      contactId: contactId,
      userId: userId,
      gender: gender,
    );
  }

  @override
  Future<User> updatePersonalInformation({
    required String firstName,
    required String surName,
    required Country country,
    required String city,
    required String phone,
    required String userId,
    required String contactId,
    required String userGroupID,
    required String gender,
  }) async {
    final response = await _dataSource.updatePersonalInformation(
      city: city,
      country: country,
      firstName: firstName,
      phone: phone,
      surName: surName,
      contactId: contactId,
      userId: userId,
      userGroupID: userGroupID,
      gender: gender,
    );

    return response.toEntity();
  }

  @override
  Future<String> uploadProfilePhoto({
    required File file,
    required String contactID,
  }) {
    return _dataSource.uploadProfilePhoto(file: file, contactID: contactID);
  }

  @override
  Future<User?> getCurrentContact(String contactID) async {
    final response = await _dataSource.getCurrentContact(contactID);
    if (response.isNotEmpty) {
      return response.first.toEntity();
    }

    return null;
  }

  @override
  Future<void> onboardingDone(String userID) {
    return _dataSource.onboarding(userID);
  }

  @override
  Future<User> updateCompanyInformation({
    required String companyName,
    required String companyID,
    required String userId,
    required String contactId,
    required String userGroupID,
  }) async {
    final response = await _dataSource.updateCompanyInformation(
      companyName: companyName,
      companyID: companyID,
      userId: userId,
      contactId: contactId,
      userGroupID: userGroupID,
    );

    return response.toEntity();
  }

  @override
  Future<void> updateContactCompany({
    required String companyName,
    required String companyID,
    required String userId,
    required String contactId,
    required String firstName,
    required String surName,
  }) {
    return _dataSource.updateContactCompany(
      companyName: companyName,
      companyID: companyID,
      userId: userId,
      contactId: contactId,
      firstName: firstName,
      surName: surName,
    );
  }

  @override
  Future<List<OnboardingStep>> getOnboardingStep(int userID) async {
    final response = await _dataSource.getOnboardingStep(userID);

    return response.map((e) => e.toEntity()).toList();
  }

  @override
  Future<OnboardingStep> setOnboardingStep({
    required OnboardingStepEnum onboardingStep,
    required OnboardingStepStatusEnum onboardingStepStatus,
    required int userID,
  }) async {
    final response = await _dataSource.setOnboardingStep(
      onboardingStep: onboardingStep,
      userID: userID,
      onboardingStepStatus: onboardingStepStatus,
    );

    return response.toEntity();
  }

  @override
  Future<OnboardingStep> updateOnboardingStep({
    required OnboardingStepEnum onboardingStep,
    required OnboardingStepStatusEnum onboardingStepStatus,
    required int userID,
  }) async {
    final response = await _dataSource.updateOnboardingStep(
      onboardingStep: onboardingStep,
      userID: userID,
      onboardingStepStatus: onboardingStepStatus,
    );

    return response.toEntity();
  }
}
