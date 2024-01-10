import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/configs/di/di.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../domain/domain.dart';
import '../../../../base/bloc/base_bloc.dart';
import '../../../../common_blocs/app/app_bloc.dart';
import '../../../../routing/router/router.dart';

part 'personal_information_bloc.freezed.dart';
part 'personal_information_event.dart';
part 'personal_information_state.dart';

@injectable
class PersonalInfomationBloc extends BaseBloc<PersonalInfomationEvent, PersonalInfomationState> {
  PersonalInfomationBloc(
    this._referenceRepository,
    this._userRepository,
  ) : super(PersonalInfomationState.initial()) {
    on<InitScreen>(_getPageData);
    on<FirstNameChanged>(_onFirstNameChanged);
    on<GenderChanged>(_onGenderChanged);
    on<SurNameChanged>(_onSurNameChanged);
    on<PersonalInformationSubmitted>(_onPersonalInformationSubmitted);
    on<CountryChanged>(_onCountryChanged);
    on<CityChanged>(_onCityChanged);
    on<PhoneChanged>(_onPhoneChanged);
    on<LinkedInProfileChanged>(_onLinkedInProfileChanged);
    on<AboutYourselfChanged>(_onAboutYourselfChanged);
  }

  final ReferenceRepository _referenceRepository;
  final UserRepository _userRepository;

  void _onFirstNameChanged(
    FirstNameChanged event,
    Emitter<PersonalInfomationState> emit,
  ) {
    emit(
      state.copyWith(firstName: event.firstName, errorMessage: null),
    );
  }

  void _onSurNameChanged(
    SurNameChanged event,
    Emitter<PersonalInfomationState> emit,
  ) {
    emit(state.copyWith(surName: event.surName, errorMessage: null));
  }

  Future<void> _onPersonalInformationSubmitted(
    PersonalInformationSubmitted event,
    Emitter<PersonalInfomationState> emit,
  ) async {
    emit(state.copyWith(submitCount: state.submitCount + 1));
    if (!state.isFormValid || state.isSubmitting) {
      return;
    }

    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isSubmitting: true));

        await Future.wait(
          [
            _userRepository.updatePersonalInformation(
              city: state.city,
              country: state.country!,
              firstName: state.firstName,
              phone: state.phone,
              surName: state.surName,
              contactId: currentUser.contactID.toString(),
              userId: currentUser.id.toString(),
              userGroupID: currentUser.userGroupID.toString(),
              gender: state.gender?.value ?? '',
            ),
            _userRepository.updateContact(
              city: state.city,
              country: state.country!,
              firstName: state.firstName,
              phone: state.phone,
              surName: state.surName,
              aboutYourself: state.aboutYourself,
              linkedInProfile: state.linkedInProfile,
              contactId: currentUser.contactID.toString(),
              userId: currentUser.id.toString(),
              gender: state.gender?.value ?? '',
            ),
          ],
          eagerError: true,
        );
        OnboardingStep? onboardingStep;
        onboardingStep = currentOnboardingStep != null
            ? await _userRepository.updateOnboardingStep(
                onboardingStep: OnboardingStepEnum.myProfile,
                userID: currentUser.id!,
                onboardingStepStatus: OnboardingStepStatusEnum.complete,
              )
            : await _userRepository.setOnboardingStep(
                onboardingStep: OnboardingStepEnum.myProfile,
                userID: currentUser.id!,
                onboardingStepStatus: OnboardingStepStatusEnum.complete,
              );
        getIt.get<AppBloc>().add(OnboardingStepChanged(onboardingStep));
        getIt.get<AppBloc>().add(const AppInitiated());
        emit(state.copyWith(isSubmitting: false));
        await getIt.get<AppRouter>().pushNamed(
              RouteList.onboardingProfilePhoto,
            );
      },
      doOnError: (exception) async {
        emit(state.copyWith(isSubmitting: false));
        logError(exception.toString());
      },
    );
  }

  Future<void> _getPageData(
    InitScreen event,
    Emitter<PersonalInfomationState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    await runBlocCatching(
      action: () async {
        final countries = await _referenceRepository.getCountryList();

        final currentCountry = countries.firstWhereOrNull(
          (element) => element.countryID == currentUser.countryID,
        );
        List<City> cities = [];
        if (currentCountry != null) {
          cities = await _referenceRepository.getCityList(currentCountry.countryID.toString());
        }
        emit(
          state.copyWith(
            countries: countries,
            isLoading: false,
            firstName: currentUser.firstName ?? '',
            surName: currentUser.surname ?? '',
            errorMessage: null,
            country: currentCountry,
            city: currentUser.city ?? '',
            cities: cities,
            phone: currentUser.mobileNumber ?? '',
            linkedInProfile: currentUser.linkedIn ?? '',
            aboutYourself: currentUser.headline ?? '',
            gender: Gender.fromString(currentUser.gender),
          ),
        );
      },
      doOnError: (exception) async {
        emit(state.copyWith(isLoading: false));
      },
    );
  }

  Future<void> _onCountryChanged(
    CountryChanged event,
    Emitter<PersonalInfomationState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    await runBlocCatching(
      action: () async {
        final cities = await _referenceRepository.getCityList(event.country.countryID.toString());
        emit(
          state.copyWith(
            cities: cities,
            isLoading: false,
            country: event.country,
            city: '',
          ),
        );
      },
      doOnError: (exception) async {
        emit(state.copyWith(isLoading: false));
      },
    );
  }

  FutureOr<void> _onCityChanged(
    CityChanged event,
    Emitter<PersonalInfomationState> emit,
  ) {
    emit(
      state.copyWith(city: event.city),
    );
  }

  FutureOr<void> _onPhoneChanged(
    PhoneChanged event,
    Emitter<PersonalInfomationState> emit,
  ) {
    emit(
      state.copyWith(phone: event.phone),
    );
  }

  FutureOr<void> _onLinkedInProfileChanged(
    LinkedInProfileChanged event,
    Emitter<PersonalInfomationState> emit,
  ) {
    emit(
      state.copyWith(linkedInProfile: event.linkedInProfile),
    );
  }

  FutureOr<void> _onAboutYourselfChanged(
    AboutYourselfChanged event,
    Emitter<PersonalInfomationState> emit,
  ) {
    emit(
      state.copyWith(aboutYourself: event.aboutYourself),
    );
  }

  FutureOr<void> _onGenderChanged(
    GenderChanged event,
    Emitter<PersonalInfomationState> emit,
  ) {
    emit(state.copyWith(gender: event.gender));
  }
}
