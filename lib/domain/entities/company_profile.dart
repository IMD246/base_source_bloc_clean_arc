import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_profile.freezed.dart';
part 'company_profile.g.dart';

@freezed
class CompanyProfile with _$CompanyProfile {
  const CompanyProfile._();
  const factory CompanyProfile({
    String? companyLogo,
    String? companyName,
    String? companyMission,
    String? logo,
    String? companyProfile,
    String? webSite,
    int? industryID,
    String? city,
    String? physicalAddress,
    String? country,
    int? companyID,
    String? telephoneNumber,
    String? emailAddress,
    String? companyRegistrationNumber,
    dynamic dateRegistered,
    String? ampLink,
    int? isStream,
    int? companyOwnerContactID,
    dynamic companyCreatedDate,
    dynamic beeLevelID,
    int? blackOwnership,
    dynamic yearsInBusiness,
    int? blackOwnershipWomen,
    int? blackManagement,
    dynamic accreditationBody,
    dynamic accreditationNumber,
    dynamic fspLicenseNumber,
    dynamic vatRegistrationNumber,
    dynamic facebook,
    dynamic instagram,
    dynamic twitter,
    dynamic otherSocialMedia,
    String? companyVision,
    String? teamExperienceDescription,
    @Default(false) bool existingCommercialLicense,
    String? existingCommercialLicenseDetail,
    dynamic problemSolutionDescription,
    dynamic valueCreation,
    dynamic valueCreationDetail,
    dynamic targetMarket,
    dynamic motivation,
    dynamic competitors,
    dynamic competitiveAdvantages,
    dynamic uniqueValueProposition,
    dynamic targetMarketDemographics,
    dynamic targetMarketSize,
    dynamic targetMarketLocation,
    dynamic brandStrategy,
    dynamic leadGeneration,
    dynamic conversionStrategy,
  }) = _CompanyProfile;

  factory CompanyProfile.fromJson(Map<String, dynamic> json) => _$CompanyProfileFromJson(json);
}

enum LevelOfInvolvement { fullTimePermanent, fullTimeContract, partTime, intern, freshGraduate }

extension LevelOfInvolvementExt on LevelOfInvolvement {
  int get value {
    switch (this) {
      case LevelOfInvolvement.fullTimePermanent:
        return 1;
      case LevelOfInvolvement.fullTimeContract:
        return 2;
      case LevelOfInvolvement.partTime:
        return 3;
      case LevelOfInvolvement.intern:
        return 4;
      case LevelOfInvolvement.freshGraduate:
        return 5;
      default:
        return 0;
    }
  }

  String get displayName {
    switch (this) {
      case LevelOfInvolvement.fullTimePermanent:
        return 'Full Time - Permanent';
      case LevelOfInvolvement.fullTimeContract:
        return 'Full Time - Contract';
      case LevelOfInvolvement.partTime:
        return 'Part Time / Freelancer';
      case LevelOfInvolvement.intern:
        return 'Intern';
      case LevelOfInvolvement.freshGraduate:
        return 'Fresh Graduate';
      default:
        return '';
    }
  }
}
