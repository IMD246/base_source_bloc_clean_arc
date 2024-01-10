// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_owner.freezed.dart';
part 'company_owner.g.dart';

@freezed
class CompanyOwner with _$CompanyOwner {
  const CompanyOwner._();
  const factory CompanyOwner({
    int? companyID,
    int? companyOwnerContactID,
  }) = _CompanyOwner;

  factory CompanyOwner.fromJson(Map<String, dynamic> json) => _$CompanyOwnerFromJson(json);
}
