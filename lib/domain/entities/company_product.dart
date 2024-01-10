import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_product.freezed.dart';
part 'company_product.g.dart';

@freezed
class CompanyProduct with _$CompanyProduct {
  const factory CompanyProduct({
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
  }) = _CompanyProduct;

  factory CompanyProduct.fromJson(Map<String, dynamic> json) => _$CompanyProductFromJson(json);
}
