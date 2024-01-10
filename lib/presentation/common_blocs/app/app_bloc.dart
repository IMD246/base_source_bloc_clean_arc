import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../core/configs/di/di.dart';
import '../../../core/constants/locale_constants.dart';
import '../../../domain/domain.dart';
import '../../base/bloc/base_bloc.dart';
import '../../base/bloc/common/common_bloc.dart';
import '../socket_notification/socket_notification_bloc.dart';

part 'app_bloc.freezed.dart';
part 'app_bloc.g.dart';
part 'app_event.dart';
part 'app_state.dart';

@singleton
class AppBloc extends BaseBloc<AppEvent, AppState> with HydratedMixin {
  AppBloc(
    this._userRepository,
  ) : super(const AppState()) {
    hydrate();

    on<AppInitiated>(_onAppInitiated);
    on<CurrentUserChanged>(_onCurrentUserChanged);
    on<AppLanguageChanged>(_onAppLanguageChanged);
    on<AppResumed>(_onAppResumed);
    on<AppSuspended>(_onAppSuspended);
    on<AppDisposed>(_onAppDisposed);
    on<OnboardingStepChanged>(_onOnboardingStepChanged);
  }

  final UserRepository _userRepository;

  @override
  AppState? fromJson(Map<String, dynamic> json) {
    return AppState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AppState state) {
    return state.toJson();
  }

  void _onCurrentUserChanged(CurrentUserChanged event, Emitter<AppState> emit) {
    emit(state.copyWith(currentUser: event.currentUser));
  }

  void _onAppLanguageChanged(AppLanguageChanged event, Emitter<AppState> emit) {
    emit(state.copyWith(locale: event.locale));
  }

  FutureOr<void> _onAppInitiated(
    AppInitiated event,
    Emitter<AppState> emit,
  ) async {
    if (state.isLoggedIn) {
      try {
        commonBloc = getIt.get<CommonBloc>();
      } catch (_) {}

      await runBlocCatching(
        action: () async {
          // get current user profile with token
          final currentUser = await _userRepository.getCurrentUserProfile();
          final onboardingStep =
              await _userRepository.getOnboardingStep(currentUser.id ?? -1);
          logInfo('Current user contactID: ${currentUser.contactID}');
          unawaited(_userRepository.establishSocketConnection());
          getIt
              .get<SocketNotificationBloc>()
              .add(SocketNotificationInitialEvent());

          emit(state.copyWith(
            currentUser: currentUser,
            onboardingStep:
                onboardingStep.isNotEmpty ? onboardingStep.first : null,
          ));
        },
        handleLoading: false,
        doOnError: (_) async {
          emit(state.copyWith(currentUser: null));
          commonBloc.add(const ForceLogoutButtonPressed());
        },
      );
    }
  }

  void _onAppResumed(AppResumed event, Emitter<AppState> emit) {}

  void _onAppSuspended(AppSuspended event, Emitter<AppState> emit) {}

  void _onAppDisposed(AppDisposed event, Emitter<AppState> emit) {
    _userRepository.closeSocketConnection();
  }

  FutureOr<void> _onOnboardingStepChanged(
    OnboardingStepChanged event,
    Emitter<AppState> emit,
  ) {
    emit(state.copyWith(onboardingStep: event.onboardingStep));
  }
}
