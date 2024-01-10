part of 'company_information_bloc.dart';

enum SignInFailureReason {
  invalidCredentials,
  unknown,
}

@freezed
class CompanyInformationState extends BaseState with _$CompanyInformationState {
  const CompanyInformationState._();

  factory CompanyInformationState.initial() => const CompanyInformationState();

  const factory CompanyInformationState({
    @Default('') String jobTitle,
    @Default(null) LevelOfInvolvement? levelOfInvolvement,
    @Default('') String startWorkingDate,
    @Default(0) int submitCount,
    @Default(false) bool isSubmitting,
    @Default(false) bool isSignInSuccess,
    @Default([]) List<CompanyProfile> companyList,
    @Default(null) CompanyProfile? selectedCompany,
    SignInFailureReason? failureReason,
  }) = _CompanyInformationState;

  bool get isFormValid =>
      jobTitle.isNotEmpty && levelOfInvolvement != null && startWorkingDate.isNotEmpty && selectedCompany != null;

  bool get hadBeenSubmitted => submitCount > 0;
}
