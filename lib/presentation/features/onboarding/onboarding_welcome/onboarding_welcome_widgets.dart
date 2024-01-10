part of 'onboarding_welcome_page.dart';

class _ProfilePhotoDecorationTexts extends StatelessWidget {
  const _ProfilePhotoDecorationTexts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.l10n.welcome_onboarding__title,
          style: AppTextStyles.headlineSmall.bold,
        ),
        AppSpacing.gapH32,
        Text(
          context.l10n.welcome_onboarding__subtitle,
          style: AppTextStyles.bodyLarge,
          textAlign: TextAlign.center,
        ),
        AppSpacing.gapH64,
      ],
    );
  }
}

class _GetStartButton extends StatelessWidget {
  const _GetStartButton();

  void _onGetStartButtonPressed(BuildContext context) {
    context.read<WelcomeOnboardingBloc>().add(const GetStartButtonPressed());
  }

  @override
  Widget build(BuildContext context) {
    return AppButton.primary(
      width: double.infinity,
      height: Sizes.s48,
      label: context.l10n.button__next.toUpperCase(),
      onPressed: () => _onGetStartButtonPressed(context),
    );
  }
}
