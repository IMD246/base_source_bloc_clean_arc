// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductStatusImpl _$$ProductStatusImplFromJson(Map<String, dynamic> json) =>
    _$ProductStatusImpl(
      companyProductStatusID: json['companyProductStatusID'] as int?,
      companyProductStatus: json['companyProductStatus'] as String?,
      companyProductStatusDescription:
          json['companyProductStatusDescription'] as String?,
      companyProductStatusObjectives:
          json['companyProductStatusObjectives'] as String?,
      productTypeID: json['productTypeID'] as int?,
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$$ProductStatusImplToJson(_$ProductStatusImpl instance) =>
    <String, dynamic>{
      'companyProductStatusID': instance.companyProductStatusID,
      'companyProductStatus': instance.companyProductStatus,
      'companyProductStatusDescription':
          instance.companyProductStatusDescription,
      'companyProductStatusObjectives': instance.companyProductStatusObjectives,
      'productTypeID': instance.productTypeID,
      'verified': instance.verified,
    };
