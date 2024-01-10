// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';
import 'base/entity_mappable.dart';

part 'company_owner_data.freezed.dart';
part 'company_owner_data.g.dart';

@freezed
class CompanyOwnerData with _$CompanyOwnerData, EntityMappable<CompanyOwner> {
  const CompanyOwnerData._();
  const factory CompanyOwnerData({
    int? companyID,
    int? companyOwnerContactID,
  }) = _CompanyOwnerData;

  factory CompanyOwnerData.fromJson(Map<String, dynamic> json) => _$CompanyOwnerDataFromJson(json);

  @override
  CompanyOwner toEntity() {
    return CompanyOwner(
      companyID: companyID,
      companyOwnerContactID: companyOwnerContactID,
    );
  }
}
