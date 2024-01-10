import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/constants/ui/ui_constants.dart';
import '../../../../../../../core/extensions/extensions.dart';
import '../../../../../../../domain/entities/program.dart';
import '../../../../../../common_widgets/common_widgets.dart';
import '../../../../../../resource/resource.dart';
import '../bloc/program_details_bloc.dart';

class ProgramProfileCard extends StatelessWidget {
  const ProgramProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgramDetailsBloc, ProgramDetailsState>(
      buildWhen: (previous, current) =>
          previous.program!.company != previous.program!.company || previous.program!.title != previous.program!.title,
      builder: (context, state) {
        return Container(
          color: Colors.white,
          padding: AppSpacing.edgeInsetsH16,
          child: Column(
            children: [
              _buildAvatarAndCover(state.program!),
              _buildContents(context, state.program!),
              _buildActionButtons(context, state.program!),
              AppSpacing.gapH4,
            ],
          ),
        );
      },
    );
  }

  Widget _buildAvatarAndCover(Program program) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: kDefaultProfileImageSize / 3),
          child: _buildCoverImage(program),
        ),
        Positioned(
          top: kDefaultCoverImageHeight - kDefaultProfileImageSize * 2 / 3,
          left: Sizes.s8,
          child: _buildAvatarImage(program),
        ),
      ],
    );
  }

  Widget _buildAvatarImage(Program program) {
    return AppNetworkImage(
      program.company.logo,
      imageBuilder: (context, imageProvider) => Container(
        width: kDefaultProfileImageSize,
        height: kDefaultProfileImageSize,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadowConstants.defaultBoxShadow],
          shape: BoxShape.circle,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Widget _buildCoverImage(Program program) {
    if (program.banner.isEmpty) {
      return _buildCoverImagePlaceholder();
    }

    return AppNetworkImage(
      program.banner,
      placeholder: _buildCoverImagePlaceholder(),
      imageBuilder: (context, imageProvider) => Container(
        height: kDefaultCoverImageHeight,
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(Sizes.s8),
        ),
      ),
    );
  }

  Container _buildCoverImagePlaceholder() {
    return Container(
      height: kDefaultCoverImageHeight,
      decoration: BoxDecoration(
        color: AppColors.gray3,
        borderRadius: BorderRadius.circular(Sizes.s8),
      ),
    );
  }

  Widget _buildContents(BuildContext context, Program program) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSpacing.gapH8,
          Text(
            program.title,
            style: AppTextStyles.headlineSmall.bold,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          AppSpacing.gapH8,
          Text(
            context.l10n.programs__delivered_by(program.company.name),
            style: AppTextStyles.bodyMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          AppSpacing.gapH12,
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context, Program program) {
    return Row(
      children: [
        AppButton.primary(
          label: context.l10n.program_details__apply,
          onPressed: () {},
        ),
      ],
    );
  }
}
