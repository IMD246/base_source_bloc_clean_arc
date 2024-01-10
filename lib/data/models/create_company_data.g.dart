// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_company_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCompanyDataImpl _$$CreateCompanyDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCompanyDataImpl(
      companyName: json['companyName'] as String?,
      companyTypeID: json['companyTypeID'] as int?,
      industryID: json['industryID'] as int?,
      website: json['website'] as String?,
      telephoneNumber: json['telephoneNumber'] as String?,
      productName: json['productName'] as String?,
      productPitch: json['productPitch'] as String?,
      companyProductStatusID: json['companyProductStatusID'] as int?,
      productCategoryID: json['productCategoryID'] as int?,
      companyID: json['inOut_CompanyID'] as int?,
    );

Map<String, dynamic> _$$CreateCompanyDataImplToJson(
        _$CreateCompanyDataImpl instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'companyTypeID': instance.companyTypeID,
      'industryID': instance.industryID,
      'website': instance.website,
      'telephoneNumber': instance.telephoneNumber,
      'productName': instance.productName,
      'productPitch': instance.productPitch,
      'companyProductStatusID': instance.companyProductStatusID,
      'productCategoryID': instance.productCategoryID,
      'inOut_CompanyID': instance.companyID,
    };
