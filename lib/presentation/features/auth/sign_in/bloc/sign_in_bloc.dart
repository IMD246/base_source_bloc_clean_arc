import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/configs/configs.dart';
import '../../../../../core/constants/route_constants.dart';
import '../../../../../core/exceptions/api_exception.dart';
import '../../../../../core/utils/validation_utils.dart';
import '../../../../../domain/repositories/repositories.dart';
import '../../../../base/bloc/base_bloc.dart';
import '../../../../common_blocs/app/app_bloc.dart';
import '../../../../routing/router/router.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends BaseBloc<SignInEvent, SignInState> {
  SignInBloc(
    this._authRepository,
    this._userRepository,
  ) : super(SignInState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<SignInSubmitted>(_onSignInSubmitted);
  }

  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  void _onEmailChanged(EmailChanged event, Emitter<SignInState> emit) {
    emit(state.copyWith(email: event.email, failureReason: null));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<SignInState> emit) {
    emit(state.copyWith(password: event.password, failureReason: null));
  }

  Future<void> _onSignInSubmitted(
    SignInSubmitted event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(submitCount: state.submitCount + 1));
    if (!state.isFormValid || state.isSubmitting) {
      return;
    }

    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isSubmitting: true));

        await _authRepository.login(
          email: state.email,
          password: state.password,
        );
        unawaited(_userRepository.establishSocketConnection());

        final user = await _userRepository.getCurrentUserProfile();
        final onboardingStep = await _userRepository.getOnboardingStep(user.id ?? -1);
        if (onboardingStep.isNotEmpty) {
          getIt.get<AppBloc>().add(OnboardingStepChanged(onboardingStep.first));
        }

        getIt.get<AppBloc>().add(CurrentUserChanged(user));
        emit(state.copyWith(isSubmitting: false, isSignInSuccess: true));
        Future.delayed(const Duration(milliseconds: 300), () {
          if (user.onboarding) {
            getIt.get<AppBloc>().add(const AppInitiated());
            getIt.get<AppRouter>().pushNamed(RouteList.home);
          } else {
            getIt.get<AppRouter>().pushNamed(RouteList.onboardingPersonalInfomation);
          }
        });
      },
      doOnError: (exception) async {
        var failureReason = SignInFailureReason.unknown;

        if (exception is ApiException && exception.kind == ApiExceptionKind.server) {
          failureReason = SignInFailureReason.invalidCredentials;
        }

        emit(state.copyWith(isSubmitting: false, failureReason: failureReason));
      },
    );
  }
}
