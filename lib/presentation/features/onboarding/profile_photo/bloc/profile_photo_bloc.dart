import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/configs/configs.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../domain/entities/entities.dart';
import '../../../../../domain/repositories/repositories.dart';
import '../../../../base/bloc/base_bloc.dart';
import '../../../../common_blocs/app/app_bloc.dart';
import '../../../../routing/router/router.dart';

part 'profile_photo_bloc.freezed.dart';
part 'profile_photo_event.dart';
part 'profile_photo_state.dart';

@injectable
class ProfilePhotoBloc extends BaseBloc<ProfilePhotoEvent, ProfilePhotoState> {
  ProfilePhotoBloc(
    this._userRepository,
  ) : super(ProfilePhotoState.initial()) {
    on<InitScreen>(_onInitScreen);
    on<PhotoChanged>(_onPhotoChanged);
    on<NextSubmitted>(_onNextSubmitted);
    on<SelectPhotoPressed>(_onSelectPhotoPressed);
    add(const InitScreen());
  }

  final UserRepository _userRepository;

  Future<void> _onNextSubmitted(
    NextSubmitted event,
    Emitter<ProfilePhotoState> emit,
  ) async {
    if (state.isSubmitting) {
      return;
    }
    if (state.filePath.isEmpty && state.currentAvatar.isNotEmpty) {
      final onboardingStep = await _userRepository.updateOnboardingStep(
        onboardingStep: OnboardingStepEnum.photo,
        userID: currentUser.id!,
        onboardingStepStatus: OnboardingStepStatusEnum.complete,
      );
      getIt.get<AppBloc>().add(OnboardingStepChanged(onboardingStep));
      getIt.get<AppBloc>().add(const AppInitiated());
      await getIt.get<AppRouter>().pushNamed(RouteList.onboardingCompanyInformation);
    }
    if (state.filePath.isNotEmpty) {
      await runBlocCatching(
        action: () async {
          emit(state.copyWith(isSubmitting: true));
          await _userRepository.uploadProfilePhoto(
            file: File(state.filePath),
            contactID: currentUser.contactID.toString(),
          );

          final onboardingStep = await _userRepository.updateOnboardingStep(
            onboardingStep: OnboardingStepEnum.photo,
            userID: currentUser.id!,
            onboardingStepStatus: OnboardingStepStatusEnum.complete,
          );
          getIt.get<AppBloc>().add(OnboardingStepChanged(onboardingStep));
          getIt.get<AppBloc>().add(const AppInitiated());
          emit(state.copyWith(isSubmitting: false));
          await getIt.get<AppRouter>().pushNamed(RouteList.onboardingCompanyInformation);
        },
        doOnError: (exception) async {
          logError(exception.toString());
          emit(state.copyWith(isSubmitting: false));
        },
      );
    }
  }

  FutureOr<void> _onPhotoChanged(
    PhotoChanged event,
    Emitter<ProfilePhotoState> emit,
  ) {
    emit(state.copyWith(filePath: event.filePath));
  }

  Future<FutureOr<void>> _onSelectPhotoPressed(
    SelectPhotoPressed event,
    Emitter<ProfilePhotoState> emit,
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
        state.copyWith(filePath: croppedFile?.path ?? ''),
      );
    }
  }

  FutureOr<void> _onInitScreen(
    InitScreen event,
    Emitter<ProfilePhotoState> emit,
  ) {
    emit(state.copyWith(currentAvatar: currentUser.profilePhoto ?? ''));
  }
}
