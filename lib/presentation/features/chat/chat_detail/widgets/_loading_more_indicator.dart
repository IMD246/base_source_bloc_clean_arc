part of '../chat_detail_page.dart';

class LoadingMoreMessageIndicator extends StatelessWidget {
  const LoadingMoreMessageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppDefaultLoading(size: Sizes.s24),
        AppSpacing.gapH8,
        Text(
          context.l10n.chat_detail__loading_messages,
          style: AppTextStyles.bodyMedium.gray,
        ),
        AppSpacing.gapH24,
      ],
    );
  }
}
