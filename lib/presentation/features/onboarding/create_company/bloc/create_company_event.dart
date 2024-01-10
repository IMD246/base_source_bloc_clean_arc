part of 'create_company_bloc.dart';

abstract class CreateCompanyEvent extends BaseEvent {}

@freezed
class InitScreen extends CreateCompanyEvent with _$InitScreen {
  const factory InitScreen() = _InitScreen;
}

@freezed
class CompanyNameChanged extends CreateCompanyEvent with _$CompanyNameChanged {
  const factory CompanyNameChanged(String companyName) = _CompanyNameChanged;
}

@freezed
class CompanyLogoChange extends CreateCompanyEvent with _$CompanyLogoChange {
  const factory CompanyLogoChange(String filePath) = _CompanyLogoChange;
}

@freezed
class IndustryChanged extends CreateCompanyEvent with _$IndustryChanged {
  const factory IndustryChanged(Industry industry) = _IndustryChanged;
}

@freezed
class BusinessTypeChanged extends CreateCompanyEvent with _$BusinessTypeChanged {
  const factory BusinessTypeChanged(CompanyType companyType) = _BusinessTypeChanged;
}

@freezed
class OrganisationChanged extends CreateCompanyEvent with _$OrganisationChanged {
  const factory OrganisationChanged(String organisation) = _OrganisationChanged;
}

@freezed
class DateRegisterdChanged extends CreateCompanyEvent with _$DateRegisterdChanged {
  const factory DateRegisterdChanged(DateTime date) = _DateRegisterdChanged;
}

@freezed
class WebSiteChanged extends CreateCompanyEvent with _$WebSiteChanged {
  const factory WebSiteChanged(String website) = _WebSiteChanged;
}

@freezed
class ContactNumberChanged extends CreateCompanyEvent with _$ContactNumberChanged {
  const factory ContactNumberChanged(String contactNumber) = _ContactNumberChanged;
}

@freezed
class OfficeAddressChanged extends CreateCompanyEvent with _$OfficeAddressChanged {
  const factory OfficeAddressChanged(String address) = _OfficeAddressChanged;
}

@freezed
class JobTitleChanged extends CreateCompanyEvent with _$JobTitleChanged {
  const factory JobTitleChanged(String jobTitle) = _JobTitleChanged;
}

@freezed
class LevelOfInvolvementChanged extends CreateCompanyEvent with _$LevelOfInvolvementChanged {
  const factory LevelOfInvolvementChanged(
    LevelOfInvolvement levelOfInvolvement,
  ) = _LevelOfInvolvementChanged;
}

@freezed
class StartWorkingDateChange extends CreateCompanyEvent with _$StartWorkingDateChange {
  const factory StartWorkingDateChange(DateTime startWorkingDate) = _StartWorkingDateChange;
}

@freezed
class NotRegisteredYetChanged extends CreateCompanyEvent with _$NotRegisteredYetChanged {
  const factory NotRegisteredYetChanged(
    bool value,
  ) = _NotRegisteredYetChanged;
}

@freezed
class ContinueButtonPressed extends CreateCompanyEvent with _$ContinueButtonPressed {
  const factory ContinueButtonPressed() = _ContinueButtonPressed;
}

@freezed
class SelectedPhotoPressed extends CreateCompanyEvent with _$SelectedPhotoPressed {
  const factory SelectedPhotoPressed() = _SelectedPhotoPressed;
}
