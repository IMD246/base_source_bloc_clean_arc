import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/configs/di/di.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../domain/domain.dart';
import '../../../../../domain/repositories/company_repo.dart';
import '../../../../base/bloc/base_bloc.dart';
import '../../../../common_blocs/app/app_bloc.dart';
import '../../../../routing/router/router.dart';

part 'company_information_bloc.freezed.dart';
part 'company_information_event.dart';
part 'company_information_state.dart';

@injectable
class CompanyInformationBloc extends BaseBloc<CompanyInformationEvent, CompanyInformationState> {
  CompanyInformationBloc(
    this._referenceRepository,
    this._userRepository,
    this._companyRepository,
  ) : super(CompanyInformationState.initial()) {
    on<InitScreen>(_onInitScreen);
    on<CompanyChanged>(_onCompanyChanged);
    on<ContinueButtonPressed>(_onContinueButtonPressed);
    on<JobTitleChanged>(_onJobTitleChanged);
    on<LevelOfInvolvementChanged>(_onLevelOfInvolvementChanged);
    on<StartWorkingDateChanged>(_onStartWorkingDateChanged);
    add(const InitScreen());
  }

  final ReferenceRepository _referenceRepository;
  final UserRepository _userRepository;
  final CompanyRepository _companyRepository;

  Future<FutureOr<void>> _onInitScreen(
    InitScreen event,
    Emitter<CompanyInformationState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        final companyList = await _referenceRepository.getCompanyProfileList();
        emit(state.copyWith(companyList: companyList));
      },
      doOnError: (exception) async {},
    );
  }

  FutureOr<void> _onCompanyChanged(
    CompanyChanged event,
    Emitter<CompanyInformationState> emit,
  ) {
    emit(state.copyWith(selectedCompany: event.company));
  }

  FutureOr<void> _onContinueButtonPressed(
    ContinueButtonPressed event,
    Emitter<CompanyInformationState> emit,
  ) async {
    emit(
      state.copyWith(
        submitCount: state.submitCount + 1,
      ),
    );
    if (state.isSubmitting || !state.isFormValid) {
      return;
    }
    await runBlocCatching(
      action: () async {
        emit(
          state.copyWith(
            isSubmitting: true,
          ),
        );
        await Future.wait([
          _companyRepository.createCompanyContact(
            city: currentUser.city ?? '',
            companyID: state.selectedCompany?.companyID.toString() ?? '',
            contactID: currentUser.contactID.toString(),
            countryID: currentUser.countryID.toString(),
            dateEmployed: state.startWorkingDate,
            designation: state.jobTitle,
            employmentTypeID: state.levelOfInvolvement?.value ?? 0,
          ),
          _userRepository.updateCompanyInformation(
            companyName: state.selectedCompany?.companyName ?? '',
            companyID: state.selectedCompany?.companyID.toString() ?? '',
            userId: currentUser.id.toString(),
            contactId: currentUser.contactID.toString(),
            userGroupID: currentUser.userGroupID.toString(),
          ),
          _userRepository.updateContactCompany(
            companyName: state.selectedCompany?.companyName ?? '',
            companyID: state.selectedCompany?.companyID.toString() ?? '',
            userId: currentUser.id.toString(),
            contactId: currentUser.contactID.toString(),
            firstName: currentUser.firstName ?? '',
            surName: currentUser.surname ?? '',
          ),
        ]);
        final onboardingStep = await _userRepository.updateOnboardingStep(
          onboardingStep: OnboardingStepEnum.companyJoin,
          userID: currentUser.id!,
          onboardingStepStatus: OnboardingStepStatusEnum.complete,
        );
        getIt.get<AppBloc>().add(OnboardingStepChanged(onboardingStep));
        emit(
          state.copyWith(
            isSubmitting: false,
          ),
        );
        final currentUserProfile = await _userRepository.getCurrentUserProfile();
        getIt.get<AppBloc>().add(CurrentUserChanged(currentUserProfile));

        await getIt.get<AppRouter>().pushNamed(RouteList.onboardingWelcome);
      },
      doOnError: (exception) async {},
    );
  }

  FutureOr<void> _onJobTitleChanged(
    JobTitleChanged event,
    Emitter<CompanyInformationState> emit,
  ) {
    emit(state.copyWith(jobTitle: event.jobTitle));
  }

  FutureOr<void> _onLevelOfInvolvementChanged(
    LevelOfInvolvementChanged event,
    Emitter<CompanyInformationState> emit,
  ) {
    emit(state.copyWith(levelOfInvolvement: event.levelOfInvolvement));
  }

  FutureOr<void> _onStartWorkingDateChanged(
    StartWorkingDateChanged event,
    Emitter<CompanyInformationState> emit,
  ) {
    emit(state.copyWith(startWorkingDate: event.startWorkingDate));
  }
}
