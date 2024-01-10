part of 'profile_photo_page.dart';

class _ProfilePhotoDecorationTexts extends StatelessWidget {
  const _ProfilePhotoDecorationTexts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.l10n.profile_photo__add_photo,
          style: AppTextStyles.headlineSmall.bold,
        ),
        AppSpacing.gapH8,
        Text(
          context.l10n.profile_photo__desc,
          style: AppTextStyles.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class EmptyAttachmentWidget extends StatelessWidget {
  const EmptyAttachmentWidget({
    super.key,
    this.onUploadButtonPressed,
  });
  final VoidCallback? onUploadButtonPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onUploadButtonPressed,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightGray3,
          borderRadius: BorderRadius.circular(Sizes.s16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppSpacing.gapH32,
            const Icon(Icons.upload),
            AppSpacing.gapH12,
            Text(
              context.l10n.profile_photo__max_size,
              style: AppTextStyles.bodyMedium.gray,
            ),
            AppSpacing.gapH32,
          ],
        ),
      ),
    );
  }
}

class _NextButton extends StatelessWidget {
  const _NextButton();

  void _onContinueButtonPressed(BuildContext context) {
    context.read<ProfilePhotoBloc>().add(const NextSubmitted());
  }

  @override
  Widget build(BuildContext context) {
    return AppButton.primary(
      width: double.infinity,
      height: Sizes.s48,
      label: context.l10n.button__next.toUpperCase(),
      onPressed: () => _onContinueButtonPressed(context),
    );
  }
}

class _PhotoWidget extends StatelessWidget {
  const _PhotoWidget({
    required this.filePath,
    required this.currentAvatar,
  });

  final String filePath;
  final String currentAvatar;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ProfilePhotoBloc>().add(const SelectPhotoPressed());
      },
      child: Container(
        padding: AppSpacing.edgeInsetsAll16,
        height: MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: AppSpacing.borderRadius8,
        ),
        child: filePath.isNotEmpty
            ? Image.file(
                File(
                  filePath,
                ),
              )
            : CachedNetworkImage(imageUrl: currentAvatar),
      ),
    );
  }
}
