import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';
import 'base/entity_mappable.dart';

part 'company_product_data.freezed.dart';
part 'company_product_data.g.dart';

@freezed
class CompanyProductData with _$CompanyProductData, EntityMappable<CompanyProduct> {
  const CompanyProductData._();
  const factory CompanyProductData({
    int? companyProductID,
    int? companyID,
    String? productName,
    dynamic productDescription,
    dynamic productCostProfile,
    String? productPitch,
    int? productCategoryID,
    int? productTypeID,
    int? companyProductStatusID,
    String? backgroundStory,
    String? intellectualPropertyOverview,
    String? intellectualPropertyOwner,
    String? intellectualPropertyProtection,
    bool? intellectualPropertyProtectionRequired,
    dynamic intellectualPropertyProtectionRequiredDescription,
    bool? externalIntellectualPropertyDependant,
    bool? licensesInPlace,
    dynamic licensesInPlaceDescription,
    bool? domainNamesRegistered,
    dynamic domainNamesRegisteredDescription,
    String? technologyUsed,
    String? technologyUsedApplicable,
    String? technologyUsedResult,
    String? competitorTechnologies,
    int? developmentMonths,
    String? businessModel,
    String? paymentSource,
    bool? businessModelConfirmed,
    dynamic businessModelConfirmedDescription,
    dynamic collaborations,
    dynamic traction,
    dynamic externalIntellectualPropertyDependantDetail,
    dynamic companyProductResult,
    dynamic companyProductImpact,
    dynamic companyProductStatusID1,
    String? companyProductStatus,
    dynamic companyProductStatusDescription,
    dynamic companyProductStatusObjectives,
    dynamic verified,
    dynamic productTypeID1,
    dynamic productLogo,
    dynamic productBanner,
    dynamic companyProductStatus1,
    dynamic companyProductStatusID2,
  }) = _CompanyProductData;

  factory CompanyProductData.fromJson(Map<String, dynamic> json) => _$CompanyProductDataFromJson(json);

  @override
  CompanyProduct toEntity() {
    return CompanyProduct(
      companyProductID: companyProductID,
      companyID: companyID,
      productName: productName,
      productDescription: productDescription,
      productCostProfile: productCostProfile,
      productPitch: productPitch,
      productCategoryID: productCategoryID,
      productTypeID: productTypeID,
      companyProductStatusID: companyProductStatusID,
      backgroundStory: backgroundStory,
      licensesInPlace: licensesInPlace,
      licensesInPlaceDescription: licensesInPlaceDescription,
      domainNamesRegistered: domainNamesRegistered,
      domainNamesRegisteredDescription: domainNamesRegisteredDescription,
      technologyUsed: technologyUsed,
      technologyUsedApplicable: technologyUsedApplicable,
      technologyUsedResult: technologyUsedResult,
      competitorTechnologies: competitorTechnologies,
      developmentMonths: developmentMonths,
      businessModel: businessModel,
      paymentSource: paymentSource,
      businessModelConfirmed: businessModelConfirmed,
      businessModelConfirmedDescription: businessModelConfirmedDescription,
      collaborations: collaborations,
      traction: traction,
      externalIntellectualPropertyDependantDetail: externalIntellectualPropertyDependantDetail,
      companyProductResult: companyProductResult,
      companyProductImpact: companyProductImpact,
      companyProductStatusID1: companyProductStatusID1,
      companyProductStatus: companyProductStatus,
      companyProductStatusDescription: companyProductStatusDescription,
      companyProductStatusObjectives: companyProductStatusObjectives,
      verified: verified,
      productTypeID1: productTypeID1,
      productLogo: productLogo,
      productBanner: productBanner,
      companyProductStatus1: companyProductStatus1,
      companyProductStatusID2: companyProductStatusID2,
    );
  }
}
