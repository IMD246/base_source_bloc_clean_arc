import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';
import 'base/entity_mappable.dart';

part 'company_profile_data.freezed.dart';
part 'company_profile_data.g.dart';

@freezed
class CompanyProfileData with _$CompanyProfileData, EntityMappable<CompanyProfile> {
  const CompanyProfileData._();
  const factory CompanyProfileData({
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
    double? blackOwnership,
    dynamic yearsInBusiness,
    double? blackOwnershipWomen,
    double? blackManagement,
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
  }) = _CompanyProfileData;

  factory CompanyProfileData.fromJson(Map<String, dynamic> json) => _$CompanyProfileDataFromJson(json);

  @override
  CompanyProfile toEntity() {
    return CompanyProfile(
      companyName: companyName,
      companyLogo: companyLogo,
      industryID: industryID,
      companyID: companyID,
      webSite: webSite,
    );
  }
}
