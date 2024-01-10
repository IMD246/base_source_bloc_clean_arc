part of 'company_information_bloc.dart';

abstract class CompanyInformationEvent extends BaseEvent {}

@freezed
class InitScreen extends CompanyInformationEvent with _$InitScreen {
  const factory InitScreen() = _InitScreen;
}

@freezed
class CompanyChanged extends CompanyInformationEvent with _$CompanyChanged {
  const factory CompanyChanged(CompanyProfile company) = _CompanyChanged;
}

@freezed
class ContinueButtonPressed extends CompanyInformationEvent with _$ContinueButtonPressed {
  const factory ContinueButtonPressed() = _ContinueButtonPressed;
}

@freezed
class JobTitleChanged extends CompanyInformationEvent with _$JobTitleChanged {
  const factory JobTitleChanged(String jobTitle) = _JobTitleChanged;
}

@freezed
class LevelOfInvolvementChanged extends CompanyInformationEvent with _$LevelOfInvolvementChanged {
  const factory LevelOfInvolvementChanged(LevelOfInvolvement levelOfInvolvement) = _LevelOfInvolvementChanged;
}

@freezed
class StartWorkingDateChanged extends CompanyInformationEvent with _$StartWorkingDateChanged {
  const factory StartWorkingDateChanged(String startWorkingDate) = _StartWorkingDateChanged;
}
