part of 'chat_input.dart';

enum AttachmentType {
  media,
  document,
}

class PickAttachmentBottomSheet extends StatelessWidget {
  const PickAttachmentBottomSheet({
    required this.onPickMedia,
    required this.onPickDocument,
    super.key,
  });

  final VoidCallback onPickMedia;
  final VoidCallback onPickDocument;

  void onTap(BuildContext context, AttachmentType type) {
    Navigator.pop(context);

    switch (type) {
      case AttachmentType.media:
        onPickMedia();
        break;
      case AttachmentType.document:
        onPickDocument();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildItem(
          context: context,
          icon: AppIcons.media,
          text: context.l10n.chat_detail__attachment_image_n_video,
          type: AttachmentType.media,
        ),
        _buildItem(
          context: context,
          icon: AppIcons.file,
          text: context.l10n.chat_detail__attachment_document,
          type: AttachmentType.document,
        ),
      ],
    );
  }

  Widget _buildItem({
    required BuildContext context,
    required Object icon,
    required String text,
    required AttachmentType type,
  }) {
    return ListTile(
      contentPadding: AppSpacing.edgeInsetsH24,
      leading: AppIcon(
        icon: icon,
        color: AppColors.gray,
      ),
      title: Text(text, style: AppTextStyles.bodyLarge.bold.gray),
      onTap: () => onTap(context, type),
    );
  }
}
