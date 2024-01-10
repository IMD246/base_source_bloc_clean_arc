// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';
import 'base/entity_mappable.dart';

part 'create_company_data.freezed.dart';
part 'create_company_data.g.dart';

@freezed
class CreateCompanyData with _$CreateCompanyData, EntityMappable<CreateCompanyResponse> {
  const CreateCompanyData._();
  const factory CreateCompanyData({
    String? companyName,
    int? companyTypeID,
    int? industryID,
    String? website,
    String? telephoneNumber,
    String? productName,
    String? productPitch,
    int? companyProductStatusID,
    int? productCategoryID,
    @JsonKey(name: 'inOut_CompanyID') int? companyID,
  }) = _CreateCompanyData;

  factory CreateCompanyData.fromJson(Map<String, dynamic> json) => _$CreateCompanyDataFromJson(json);

  @override
  CreateCompanyResponse toEntity() {
    return CreateCompanyResponse(
      companyName: companyName,
      companyTypeID: companyTypeID,
      industryID: industryID,
      website: website,
      telephoneNumber: telephoneNumber,
      companyID: companyID,
      productName: productName,
      productPitch: productName,
      companyProductStatusID: companyProductStatusID,
      productCategoryID: productCategoryID,
    );
  }
}
