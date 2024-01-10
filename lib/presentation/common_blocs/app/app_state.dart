part of 'app_bloc.dart';

@freezed
class AppState extends BaseState with _$AppState {
  const AppState._();

  const factory AppState({
    @Default(LocaleConstants.defaultLocale) String locale,
    OnboardingStep? onboardingStep,
    User? currentUser,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  bool get isLoggedIn => currentUser != null;
}
