part of 'sign_up_widgets.dart';

class PolicyTexts extends StatelessWidget {
  const PolicyTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledText(
      text: context.l10n.sign_up__policy,
      style: AppTextStyles.bodyMedium,
      tags: {
        'policy': StyledTextActionTag(
          (_, __) => _onPolicyPressed(context),
          style: AppTextStyles.bodyMedium.bold,
        ),
        'terms': StyledTextActionTag(
          (_, __) => _onTermsPressed(context),
          style: AppTextStyles.bodyMedium.bold,
        ),
      },
    );
  }

  void _onPolicyPressed(BuildContext context) {
    IntentUtils.openWebviewURL(context, RouteList.privacyPolicy);
  }

  void _onTermsPressed(BuildContext context) {
    IntentUtils.openWebviewURL(context, RouteList.termsOfService);
  }
}
