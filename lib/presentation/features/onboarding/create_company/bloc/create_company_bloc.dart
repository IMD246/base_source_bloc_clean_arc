import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/configs/di/di.dart';
import '../../../../../core/constants/route_constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../domain/entities/entities.dart';
import '../../../../../domain/repositories/company_repo.dart';
import '../../../../../domain/repositories/repositories.dart';
import '../../../../base/bloc/base_bloc.dart';
import '../../../../common_blocs/app/app_bloc.dart';
import '../../../../routing/router/router.dart';

part 'create_company_bloc.freezed.dart';
part 'create_company_event.dart';
part 'create_company_state.dart';

@injectable
class CreateCompanyBloc extends BaseBloc<CreateCompanyEvent, CreateCompanyState> {
  CreateCompanyBloc(
    this._userRepository,
    this._referenceRepository,
    this._companyRepository,
  ) : super(CreateCompanyState.initial()) {
    on<InitScreen>(_onInitScreen);
    on<CompanyNameChanged>(_onCompanyNameChanged);
    on<CompanyLogoChange>(_onCompanyLogoChange);
    on<IndustryChanged>(_onIndustryChanged);
    on<BusinessTypeChanged>(_onBusinessTypeChanged);
    on<OrganisationChanged>(_onOrganisationChanged);
    on<DateRegisterdChanged>(_onDateRegisterdChanged);
    on<NotRegisteredYetChanged>(_onNotRegisteredYetChanged);
    on<WebSiteChanged>(_onWebSiteChanged);
    on<ContactNumberChanged>(_onContactNumberChanged);
    on<OfficeAddressChanged>(_onOfficeAddressChanged);
    on<JobTitleChanged>(_onJobTitleChanged);
    on<LevelOfInvolvementChanged>(_onLevelOfInvolvementChanged);
    on<StartWorkingDateChange>(_onStartWorkingDateChange);
    on<ContinueButtonPressed>(_onContinueButtonPressed);
    on<SelectedPhotoPressed>(_onSelectedPhotoPressed);

    add(const InitScreen());
  }

  final UserRepository _userRepository;
  final ReferenceRepository _referenceRepository;
  final CompanyRepository _companyRepository;

  Future<FutureOr<void>> _onInitScreen(
    InitScreen event,
    Emitter<CreateCompanyState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        final industryList = await _referenceRepository.getIndustryList();
        emit(state.copyWith(industryList: industryList));
      },
      doOnError: (exception) async {},
    );
  }

  FutureOr<void> _onContinueButtonPressed(
    ContinueButtonPressed event,
    Emitter<CreateCompanyState> emit,
  ) async {
    emit(
      state.copyWith(
        submitCount: state.submitCount + 1,
      ),
    );
    if (!state.isFormValid || state.isSubmitting) {
      return;
    }

    await runBlocCatching(
      action: () async {
        emit(
          state.copyWith(isSubmitting: true),
        );
        final companyData = await _companyRepository.createCompany(
          companyName: state.companyName,
          companyTypeID: state.companyType?.value ?? -1,
          organisation: state.organisation,
          telephoneNumber: state.contactNumber,
          website: state.website,
          dateRegistered: state.notRegistered
              ? null
              : state.dateRegistered == null
                  ? null
                  : ParseUtils.dateTimeToServerString(state.dateRegistered!),
        );
        await Future.wait([
          if (state.companyLogo.isNotEmpty)
            _companyRepository.uploadCompanyLogo(
              file: File(state.companyLogo),
              contactID: currentUser.contactID.toString(),
              companyID: companyData.companyID.toString(),
            ),
          _userRepository.updateContactCompany(
            companyID: companyData.companyID.toString(),
            companyName: state.companyName,
            contactId: currentUser.contactID.toString(),
            firstName: currentUser.firstName ?? '',
            surName: currentUser.surname ?? '',
            userId: currentUser.id.toString(),
          ),
          _userRepository.updateCompanyInformation(
            companyID: companyData.companyID.toString(),
            companyName: state.companyName,
            contactId: currentUser.contactID.toString(),
            userGroupID: currentUser.userGroupID.toString(),
            userId: currentUser.id.toString(),
          ),
          _companyRepository.createCompanyContact(
            city: currentUser.city ?? '',
            companyID: companyData.companyID.toString(),
            contactID: currentUser.contactID.toString(),
            countryID: currentUser.countryID.toString(),
            dateEmployed: ParseUtils.dateTimeToServerString(state.startWorkingDate!),
            designation: state.jobTitle,
            employmentTypeID: state.levelOfInvolvement?.value ?? 0,
          ),
          _companyRepository.updateCompanyOwner(
            companyOwnerContactID: currentUser.contactID!,
            companyID: companyData.companyID ?? -1,
          ),
        ]);
        final onboardingStep = await _userRepository.updateOnboardingStep(
          onboardingStep: OnboardingStepEnum.companyAdd,
          userID: currentUser.id!,
          onboardingStepStatus: OnboardingStepStatusEnum.complete,
        );
        getIt.get<AppBloc>().add(OnboardingStepChanged(onboardingStep));
        final currentUserProfile = await _userRepository.getCurrentUserProfile();
        getIt.get<AppBloc>().add(CurrentUserChanged(currentUserProfile));
        getIt.get<AppBloc>().add(const AppInitiated());
        //we need to wait AppBloc update the current user to the storage
        await Future.delayed(const Duration(milliseconds: 300));
        emit(state.copyWith(isSubmitting: false));
        await getIt.get<AppRouter>().pushNamed(
              RouteList.onboardingAddProduct,
            );
      },
      doOnError: (exception) async {
        emit(state.copyWith(isSubmitting: false));
      },
    );
  }

  Future<FutureOr<void>> _onSelectedPhotoPressed(
    SelectedPhotoPressed event,
    Emitter<CreateCompanyState> emit,
  ) async {
    final ImagePicker imagePicker = ImagePicker();
    final result = await imagePicker.pickImage(source: ImageSource.gallery);
    if (result != null) {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: result.path,
        compressQuality: 100,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
        aspectRatioPresets: [CropAspectRatioPreset.square],
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Cropper',
            initAspectRatio: CropAspectRatioPreset.square,
            lockAspectRatio: true,
          ),
          IOSUiSettings(
            title: 'Cropper',
            aspectRatioLockEnabled: true,
          ),
        ],
      );
      emit(
        state.copyWith(companyLogo: croppedFile?.path ?? ''),
      );
    }
  }

  FutureOr<void> _onCompanyNameChanged(
    CompanyNameChanged event,
    Emitter<CreateCompanyState> emit,
  ) {
    emit(state.copyWith(companyName: event.companyName));
  }

  FutureOr<void> _onCompanyLogoChange(
    CompanyLogoChange event,
    Emitter<CreateCompanyState> emit,
  ) {
    emit(state.copyWith(companyLogo: event.filePath));
  }

  FutureOr<void> _onIndustryChanged(
    IndustryChanged event,
    Emitter<CreateCompanyState> emit,
  ) {
    emit(state.copyWith(selectedIndustry: event.industry));
  }

  FutureOr<void> _onBusinessTypeChanged(
    BusinessTypeChanged event,
    Emitter<CreateCompanyState> emit,
  ) {
    emit(state.copyWith(companyType: event.companyType));
  }

  FutureOr<void> _onOrganisationChanged(
    OrganisationChanged event,
    Emitter<CreateCompanyState> emit,
  ) {
    emit(state.copyWith(organisation: event.organisation));
  }

  FutureOr<void> _onDateRegisterdChanged(
    DateRegisterdChanged event,
    Emitter<CreateCompanyState> emit,
  ) {
    emit(state.copyWith(dateRegistered: event.date));
  }

  FutureOr<void> _onWebSiteChanged(
    WebSiteChanged event,
    Emitter<CreateCompanyState> emit,
  ) {
    emit(state.copyWith(website: event.website));
  }

  FutureOr<void> _onContactNumberChanged(
    ContactNumberChanged event,
    Emitter<CreateCompanyState> emit,
  ) {
    emit(state.copyWith(contactNumber: event.contactNumber));
  }

  FutureOr<void> _onOfficeAddressChanged(
    OfficeAddressChanged event,
    Emitter<CreateCompanyState> emit,
  ) {
    emit(state.copyWith(officeAddress: event.address));
  }

  FutureOr<void> _onJobTitleChanged(
    JobTitleChanged event,
    Emitter<CreateCompanyState> emit,
  ) {
    emit(state.copyWith(jobTitle: event.jobTitle));
  }

  FutureOr<void> _onLevelOfInvolvementChanged(
    LevelOfInvolvementChanged event,
    Emitter<CreateCompanyState> emit,
  ) {
    emit(state.copyWith(levelOfInvolvement: event.levelOfInvolvement));
  }

  FutureOr<void> _onStartWorkingDateChange(
    StartWorkingDateChange event,
    Emitter<CreateCompanyState> emit,
  ) {
    emit(state.copyWith(startWorkingDate: event.startWorkingDate));
  }

  FutureOr<void> _onNotRegisteredYetChanged(
    NotRegisteredYetChanged event,
    Emitter<CreateCompanyState> emit,
  ) {
    emit(state.copyWith(notRegistered: event.value));
  }
}
