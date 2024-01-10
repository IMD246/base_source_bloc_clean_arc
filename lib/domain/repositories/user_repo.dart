import 'dart:io';

import '../entities/entities.dart';

abstract class UserRepository {
  Future<User> getCurrentUserProfile();

  Future<void> establishSocketConnection();

  Future<void> closeSocketConnection();

  Future<List<User>> searchUsers(String query);

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
  });

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
  });

  Future<String> uploadProfilePhoto({
    required File file,
    required String contactID,
  });

  Future<User?> getCurrentContact(String contactID);
  Future<void> onboardingDone(String userID);

  Future<User> updateCompanyInformation({
    required String companyName,
    required String companyID,
    required String userId,
    required String contactId,
    required String userGroupID,
  });

  Future<void> updateContactCompany({
    required String companyName,
    required String companyID,
    required String userId,
    required String contactId,
    required String firstName,
    required String surName,
  });

  Future<List<OnboardingStep>> getOnboardingStep(int userID);

  Future<OnboardingStep> setOnboardingStep({
    required OnboardingStepEnum onboardingStep,
    required OnboardingStepStatusEnum onboardingStepStatus,
    required int userID,
  });

  Future<OnboardingStep> updateOnboardingStep({
    required OnboardingStepEnum onboardingStep,
    required OnboardingStepStatusEnum onboardingStepStatus,
    required int userID,
  });
}
