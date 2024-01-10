import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_contact.freezed.dart';
part 'company_contact.g.dart';

@freezed
class CompanyContact with _$CompanyContact {
  const CompanyContact._();
  const factory CompanyContact({
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
  }) = _CompanyContact;

  factory CompanyContact.fromJson(Map<String, dynamic> json) => _$CompanyContactFromJson(json);
}
