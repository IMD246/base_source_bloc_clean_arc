// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyProductImpl _$$CompanyProductImplFromJson(Map<String, dynamic> json) =>
    _$CompanyProductImpl(
      companyProductID: json['companyProductID'] as int?,
      companyID: json['companyID'] as int?,
      productName: json['productName'] as String?,
      productDescription: json['productDescription'],
      productCostProfile: json['productCostProfile'],
      productPitch: json['productPitch'] as String?,
      productCategoryID: json['productCategoryID'] as int?,
      productTypeID: json['productTypeID'] as int?,
      companyProductStatusID: json['companyProductStatusID'] as int?,
      backgroundStory: json['backgroundStory'] as String?,
      intellectualPropertyOverview:
          json['intellectualPropertyOverview'] as String?,
      intellectualPropertyOwner: json['intellectualPropertyOwner'] as String?,
      intellectualPropertyProtection:
          json['intellectualPropertyProtection'] as String?,
      intellectualPropertyProtectionRequired:
          json['intellectualPropertyProtectionRequired'] as bool?,
      intellectualPropertyProtectionRequiredDescription:
          json['intellectualPropertyProtectionRequiredDescription'],
      externalIntellectualPropertyDependant:
          json['externalIntellectualPropertyDependant'] as bool?,
      licensesInPlace: json['licensesInPlace'] as bool?,
      licensesInPlaceDescription: json['licensesInPlaceDescription'],
      domainNamesRegistered: json['domainNamesRegistered'] as bool?,
      domainNamesRegisteredDescription:
          json['domainNamesRegisteredDescription'],
      technologyUsed: json['technologyUsed'] as String?,
      technologyUsedApplicable: json['technologyUsedApplicable'] as String?,
      technologyUsedResult: json['technologyUsedResult'] as String?,
      competitorTechnologies: json['competitorTechnologies'] as String?,
      developmentMonths: json['developmentMonths'] as int?,
      businessModel: json['businessModel'] as String?,
      paymentSource: json['paymentSource'] as String?,
      businessModelConfirmed: json['businessModelConfirmed'] as bool?,
      businessModelConfirmedDescription:
          json['businessModelConfirmedDescription'],
      collaborations: json['collaborations'],
      traction: json['traction'],
      externalIntellectualPropertyDependantDetail:
          json['externalIntellectualPropertyDependantDetail'],
      companyProductResult: json['companyProductResult'],
      companyProductImpact: json['companyProductImpact'],
      companyProductStatusID1: json['companyProductStatusID1'],
      companyProductStatus: json['companyProductStatus'] as String?,
      companyProductStatusDescription: json['companyProductStatusDescription'],
      companyProductStatusObjectives: json['companyProductStatusObjectives'],
      verified: json['verified'],
      productTypeID1: json['productTypeID1'],
      productLogo: json['productLogo'],
      productBanner: json['productBanner'],
      companyProductStatus1: json['companyProductStatus1'],
      companyProductStatusID2: json['companyProductStatusID2'],
    );

Map<String, dynamic> _$$CompanyProductImplToJson(
        _$CompanyProductImpl instance) =>
    <String, dynamic>{
      'companyProductID': instance.companyProductID,
      'companyID': instance.companyID,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productCostProfile': instance.productCostProfile,
      'productPitch': instance.productPitch,
      'productCategoryID': instance.productCategoryID,
      'productTypeID': instance.productTypeID,
      'companyProductStatusID': instance.companyProductStatusID,
      'backgroundStory': instance.backgroundStory,
      'intellectualPropertyOverview': instance.intellectualPropertyOverview,
      'intellectualPropertyOwner': instance.intellectualPropertyOwner,
      'intellectualPropertyProtection': instance.intellectualPropertyProtection,
      'intellectualPropertyProtectionRequired':
          instance.intellectualPropertyProtectionRequired,
      'intellectualPropertyProtectionRequiredDescription':
          instance.intellectualPropertyProtectionRequiredDescription,
      'externalIntellectualPropertyDependant':
          instance.externalIntellectualPropertyDependant,
      'licensesInPlace': instance.licensesInPlace,
      'licensesInPlaceDescription': instance.licensesInPlaceDescription,
      'domainNamesRegistered': instance.domainNamesRegistered,
      'domainNamesRegisteredDescription':
          instance.domainNamesRegisteredDescription,
      'technologyUsed': instance.technologyUsed,
      'technologyUsedApplicable': instance.technologyUsedApplicable,
      'technologyUsedResult': instance.technologyUsedResult,
      'competitorTechnologies': instance.competitorTechnologies,
      'developmentMonths': instance.developmentMonths,
      'businessModel': instance.businessModel,
      'paymentSource': instance.paymentSource,
      'businessModelConfirmed': instance.businessModelConfirmed,
      'businessModelConfirmedDescription':
          instance.businessModelConfirmedDescription,
      'collaborations': instance.collaborations,
      'traction': instance.traction,
      'externalIntellectualPropertyDependantDetail':
          instance.externalIntellectualPropertyDependantDetail,
      'companyProductResult': instance.companyProductResult,
      'companyProductImpact': instance.companyProductImpact,
      'companyProductStatusID1': instance.companyProductStatusID1,
      'companyProductStatus': instance.companyProductStatus,
      'companyProductStatusDescription':
          instance.companyProductStatusDescription,
      'companyProductStatusObjectives': instance.companyProductStatusObjectives,
      'verified': instance.verified,
      'productTypeID1': instance.productTypeID1,
      'productLogo': instance.productLogo,
      'productBanner': instance.productBanner,
      'companyProductStatus1': instance.companyProductStatus1,
      'companyProductStatusID2': instance.companyProductStatusID2,
    };
