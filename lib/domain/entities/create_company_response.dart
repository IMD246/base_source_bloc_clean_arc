// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_company_response.freezed.dart';
part 'create_company_response.g.dart';

@freezed
class CreateCompanyResponse with _$CreateCompanyResponse {
  const CreateCompanyResponse._();
  const factory CreateCompanyResponse({
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
  }) = _CreateCompanyResponse;

  factory CreateCompanyResponse.fromJson(Map<String, dynamic> json) => _$CreateCompanyResponseFromJson(json);
}
