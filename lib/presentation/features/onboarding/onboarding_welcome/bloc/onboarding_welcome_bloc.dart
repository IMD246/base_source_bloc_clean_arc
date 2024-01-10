import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/configs/configs.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../domain/repositories/repositories.dart';
import '../../../../base/bloc/base_bloc.dart';
import '../../../../common_blocs/app/app_bloc.dart';
import '../../../../routing/router/router.dart';

part 'onboarding_welcome_bloc.freezed.dart';
part 'onboarding_welcome_event.dart';
part 'onboarding_welcome_state.dart';

@injectable
class WelcomeOnboardingBloc extends BaseBloc<WelcomeOnboardingEvent, WelcomeOnboardingState> {
  WelcomeOnboardingBloc(
    this._userRepository,
  ) : super(WelcomeOnboardingState.initial()) {
    on<GetStartButtonPressed>(_onGetStartButtonPressed);
  }

  final UserRepository _userRepository;

  Future<void> _onGetStartButtonPressed(
    GetStartButtonPressed event,
    Emitter<WelcomeOnboardingState> emit,
  ) async {
    if (state.isSubmitting) {
      return;
    }

    await runBlocCatching(
      action: () async {
        await _userRepository.onboardingDone(currentUser.id.toString());
        final currentUserProfile = await _userRepository.getCurrentUserProfile();
        getIt.get<AppBloc>().add(CurrentUserChanged(currentUserProfile));
        //we need to wait AppBloc update the current user to the storage
        await Future.delayed(const Duration(milliseconds: 300));
        getIt.get<AppBloc>().add(const AppInitiated());
        await getIt.get<AppRouter>().pushNamed(RouteList.home);
      },
      doOnError: (exception) async {
        logError(exception.toString());
        emit(state.copyWith(isSubmitting: false));
      },
    );
  }
}
