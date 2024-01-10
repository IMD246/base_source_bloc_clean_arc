part of 'create_company_bloc.dart';

@freezed
class CreateCompanyState extends BaseState with _$CreateCompanyState {
  const CreateCompanyState._();

  factory CreateCompanyState.initial() => const CreateCompanyState();

  const factory CreateCompanyState({
    @Default(false) bool isSubmitting,
    @Default(0) int submitCount,
    @Default('') String companyName,
    @Default('') String companyLogo,
    @Default(null) Industry? selectedIndustry,
    @Default(null) CompanyType? companyType,
    @Default('') String organisation,
    @Default(null) DateTime? dateRegistered,
    @Default(false) bool notRegistered,
    @Default('') String website,
    @Default('') String contactNumber,
    @Default('') String officeAddress,
    @Default('') String jobTitle,
    @Default(null) LevelOfInvolvement? levelOfInvolvement,
    @Default(null) DateTime? startWorkingDate,
    @Default([]) List<Industry> industryList,
  }) = _CreateCompanyState;

  bool get hadBeenSubmitted => submitCount > 0;
  bool get isFormValid =>
      companyName.isNotEmpty && jobTitle.isNotEmpty && levelOfInvolvement != null && startWorkingDate != null;
}
