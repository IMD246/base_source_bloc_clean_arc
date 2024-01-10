import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/exceptions/exceptions.dart';
import '../../../../../core/utils/validation_utils.dart';
import '../../../../../domain/repositories/repositories.dart';
import '../../../../base/bloc/base_bloc.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@injectable
class SignUpBloc extends BaseBloc<SignUpEvent, SignUpState> {
  SignUpBloc(this._authRepository) : super(SignUpState.initial()) {
    on<FirstNameChanged>(_onFirstNameChanged);
    on<SurNameChanged>(_onSurNameChanged);
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<IsPasswordVisibleChanged>(_onIsPasswordVisibleChanged);
    on<IsConfirmPasswordVisibleChanged>(_onIsConfirmPasswordVisibleChanged);
    on<SignUpSubmitted>(_onSignUpSubmitted);
  }

  final AuthRepository _authRepository;

  void _onFirstNameChanged(FirstNameChanged event, Emitter<SignUpState> emit) {
    emit(state.copyWith(firstName: event.firstName));
  }

  void _onSurNameChanged(SurNameChanged event, Emitter<SignUpState> emit) {
    emit(state.copyWith(surName: event.surName));
  }

  void _onEmailChanged(EmailChanged event, Emitter<SignUpState> emit) {
    emit(state.copyWith(email: event.email, failureReason: null));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<SignUpState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onConfirmPasswordChanged(ConfirmPasswordChanged event, Emitter<SignUpState> emit) {
    emit(state.copyWith(confirmPassword: event.confirmPassword));
  }

  void _onIsPasswordVisibleChanged(IsPasswordVisibleChanged event, Emitter<SignUpState> emit) {
    emit(state.copyWith(isPasswordVisible: event.isPasswordVisible));
  }

  void _onIsConfirmPasswordVisibleChanged(IsConfirmPasswordVisibleChanged event, Emitter<SignUpState> emit) {
    emit(state.copyWith(isConfirmPasswordVisible: event.isConfirmPasswordVisible));
  }

  Future<void> _onSignUpSubmitted(SignUpSubmitted event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(submitCount: state.submitCount + 1));
    if (!state.isFormValid || state.isSubmitting) {
      return;
    }

    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isSubmitting: true));

        await _authRepository.register(
          firstName: state.firstName,
          surName: state.surName,
          email: state.email,
          password: state.password,
        );
        emit(state.copyWith(isSubmitting: false, isSignUpSuccess: true));
      },
      doOnError: (exception) async {
        var failureReason = SignUpFailureReason.unknown;
        if (exception is ApiException && exception.statusCode == 422) {
          failureReason = SignUpFailureReason.emailAlreadyInUse;
        }

        emit(state.copyWith(isSubmitting: false, failureReason: failureReason));
      },
    );
  }
}
