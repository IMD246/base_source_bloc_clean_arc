part of 'app_bloc.dart';

abstract class AppEvent extends BaseEvent {
  const AppEvent();
}

@freezed
class CurrentUserChanged extends AppEvent with _$CurrentUserChanged {
  const factory CurrentUserChanged(User? currentUser) = _CurrentUserChanged;
}

@freezed
class AppLanguageChanged extends AppEvent with _$AppLanguageChanged {
  const factory AppLanguageChanged(String locale) = _AppLanguageChanged;
}

@freezed
class AppInitiated extends AppEvent with _$AppInitiated {
  const factory AppInitiated() = _AppInitiated;
}

@freezed
class AppResumed extends AppEvent with _$AppResumed {
  const factory AppResumed() = _AppResumed;
}

@freezed
class AppSuspended extends AppEvent with _$AppSuspended {
  const factory AppSuspended() = _AppSuspended;
}

@freezed
class AppDisposed extends AppEvent with _$AppDisposed {
  const factory AppDisposed() = _AppDisposed;
}

@freezed
class OnboardingStepChanged extends AppEvent with _$OnboardingStepChanged {
  const factory OnboardingStepChanged(OnboardingStep onboardingStep) =
      _OnboardingStepChanged;
}
