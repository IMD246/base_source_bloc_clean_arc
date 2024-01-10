part of '_program_profile_infos.dart';

class OverviewTabView extends StatelessWidget {
  const OverviewTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgramDetailsBloc, ProgramDetailsState>(
      builder: (context, state) {
        final program = state.program!;

        return Column(
          children: [
            AppSpacing.gapH12,
            _OverviewItem(
              title: context.l10n.program_details_overview__about_title,
              content: program.profileDesc ?? '',
            ),
            _OverviewItem(
              title: context.l10n.program_details_overview__target_title,
              content: program.entryRequirements ?? '',
            ),
            _OverviewItem(
              title: context.l10n.program_details_overview__requirements_title,
              content: program.targetAudience ?? '',
            ),
          ],
        );
      },
    );
  }
}

class _OverviewItem extends StatelessWidget {
  const _OverviewItem({
    required this.title,
    required this.content,
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.bodyLarge.bold,
        ),
        AppSpacing.gapH16,
        Text(
          content,
          style: AppTextStyles.bodyMedium.gray,
        ),
        AppSpacing.gapH32,
      ],
    );
  }
}
