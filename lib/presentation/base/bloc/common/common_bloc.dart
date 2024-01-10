import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/configs/configs.dart';
import '../../../../core/constants/route_constants.dart';
import '../../../../core/extensions/number_extensions.dart';
import '../../../../domain/domain.dart';
import '../../../common_blocs/app/app_bloc.dart';
import '../../../routing/router/router.dart';
import '../base_bloc.dart';

part 'common_bloc.freezed.dart';
part 'common_event.dart';
part 'common_state.dart';

@injectable
class CommonBloc extends BaseBloc<CommonEvent, CommonState> {
  CommonBloc(
    this._authRepository,
    this._userRepository,
  ) : super(const CommonState()) {
    on<LoadingVisibilityEmitted>(_onLoadingVisibilityEmitted);

    on<ForceLogoutButtonPressed>(_onForceLogoutButtonPressed);
  }

  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  FutureOr<void> _onLoadingVisibilityEmitted(
      LoadingVisibilityEmitted event, Emitter<CommonState> emit) {
    emit(
      state.copyWith(
        isLoading: state.loadingCount == 0 && event.isLoading
            ? true
            : state.loadingCount == 1 && !event.isLoading ||
                    state.loadingCount <= 0
                ? false
                : state.isLoading,
        loadingCount: event.isLoading
            ? state.loadingCount.plus(1)
            : state.loadingCount.minus(1),
      ),
    );
  }

  FutureOr<void> _onForceLogoutButtonPressed(
    ForceLogoutButtonPressed event,
    Emitter<CommonState> emit,
  ) async {
    await Future.wait([
      _userRepository.closeSocketConnection(),
      _authRepository.clearTokens(),
      _authRepository.logout(),
      // UI
      HydratedBloc.storage.clear(),
    ]);

    getIt.get<AppBloc>().add(const CurrentUserChanged(null));
    unawaited(getIt.get<AppRouter>().pushNamed(RouteList.welcome));
  }
}
