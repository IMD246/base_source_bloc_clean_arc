import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';
import 'base/entity_mappable.dart';

part 'company_contact_data.freezed.dart';
part 'company_contact_data.g.dart';

@freezed
class CompanyContactData with _$CompanyContactData, EntityMappable<CompanyContact> {
  const CompanyContactData._();
  const factory CompanyContactData({
    int? contactId,
    int? companyId,
    String? dateEmployed,
    dynamic designationId,
    dynamic divisionId,
    dynamic departmentId,
    dynamic subDepartmentId,
    dynamic employmentStatusId,
    dynamic staffNumber,
    int? employmentTypeId,
    @Default(false) bool primaryCompany,
    dynamic dateExit,
    int? inOutContactCompanyId,
    dynamic founder,
    String? designation,
    dynamic verified,
    dynamic verifiedDate,
    dynamic verifiedByContactId,
    dynamic responsibilities,
    dynamic managementTeam,
    dynamic technicalTeam,
    dynamic jobFunctionId,
    dynamic jobLevelId,
    dynamic programInstanceId,
    dynamic sponsorshipStatusId,
    dynamic contactSalary,
    dynamic financialAid,
    dynamic financialAidDetail,
    dynamic university,
  }) = _CompanyContactData;

  factory CompanyContactData.fromJson(Map<String, dynamic> json) => _$CompanyContactDataFromJson(json);

  @override
  CompanyContact toEntity() {
    return CompanyContact(
      companyId: companyId,
      contactId: companyId,
      dateEmployed: dateEmployed,
      dateExit: dateExit,
      departmentId: departmentId,
      designation: designation,
      employmentTypeId: employmentTypeId,
      designationId: designationId,
      employmentStatusId: employmentStatusId,
      primaryCompany: primaryCompany,
    );
  }
}
