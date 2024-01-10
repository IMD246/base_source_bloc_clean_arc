// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyContactImpl _$$CompanyContactImplFromJson(Map<String, dynamic> json) =>
    _$CompanyContactImpl(
      contactId: json['contactId'] as int?,
      companyId: json['companyId'] as int?,
      dateEmployed: json['dateEmployed'] as String?,
      designationId: json['designationId'],
      divisionId: json['divisionId'],
      departmentId: json['departmentId'],
      subDepartmentId: json['subDepartmentId'],
      employmentStatusId: json['employmentStatusId'],
      staffNumber: json['staffNumber'],
      employmentTypeId: json['employmentTypeId'] as int?,
      primaryCompany: json['primaryCompany'] as bool? ?? false,
      dateExit: json['dateExit'],
      inOutContactCompanyId: json['inOutContactCompanyId'] as int?,
      founder: json['founder'],
      designation: json['designation'] as String?,
      verified: json['verified'],
      verifiedDate: json['verifiedDate'],
      verifiedByContactId: json['verifiedByContactId'],
      responsibilities: json['responsibilities'],
      managementTeam: json['managementTeam'],
      technicalTeam: json['technicalTeam'],
      jobFunctionId: json['jobFunctionId'],
      jobLevelId: json['jobLevelId'],
      programInstanceId: json['programInstanceId'],
      sponsorshipStatusId: json['sponsorshipStatusId'],
      contactSalary: json['contactSalary'],
      financialAid: json['financialAid'],
      financialAidDetail: json['financialAidDetail'],
      university: json['university'],
    );

Map<String, dynamic> _$$CompanyContactImplToJson(
        _$CompanyContactImpl instance) =>
    <String, dynamic>{
      'contactId': instance.contactId,
      'companyId': instance.companyId,
      'dateEmployed': instance.dateEmployed,
      'designationId': instance.designationId,
      'divisionId': instance.divisionId,
      'departmentId': instance.departmentId,
      'subDepartmentId': instance.subDepartmentId,
      'employmentStatusId': instance.employmentStatusId,
      'staffNumber': instance.staffNumber,
      'employmentTypeId': instance.employmentTypeId,
      'primaryCompany': instance.primaryCompany,
      'dateExit': instance.dateExit,
      'inOutContactCompanyId': instance.inOutContactCompanyId,
      'founder': instance.founder,
      'designation': instance.designation,
      'verified': instance.verified,
      'verifiedDate': instance.verifiedDate,
      'verifiedByContactId': instance.verifiedByContactId,
      'responsibilities': instance.responsibilities,
      'managementTeam': instance.managementTeam,
      'technicalTeam': instance.technicalTeam,
      'jobFunctionId': instance.jobFunctionId,
      'jobLevelId': instance.jobLevelId,
      'programInstanceId': instance.programInstanceId,
      'sponsorshipStatusId': instance.sponsorshipStatusId,
      'contactSalary': instance.contactSalary,
      'financialAid': instance.financialAid,
      'financialAidDetail': instance.financialAidDetail,
      'university': instance.university,
    };
