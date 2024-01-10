part of 'chat_input.dart';

const _kAttachmentPreviewHeight = Sizes.s64;
const _kAttachmentPreviewWidth = Sizes.s64;
const _kFilePreviewWidth = 128.0;

class AttachmentsPreviewWidget extends StatelessWidget {
  const AttachmentsPreviewWidget({super.key});

  void _onRemoveAttachment(BuildContext context, Document document) {
    context.read<ChatDetailBloc>().add(RemoveDocument(document));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatDetailBloc, ChatDetailState>(
      buildWhen: (previous, current) => previous.documents != current.documents,
      builder: (context, state) {
        if (state.documents.isEmpty) {
          return AppSpacing.gapH16;
        }

        return SizedBox(
          height: _kAttachmentPreviewHeight + 24.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s12),
            itemCount: state.documents.length,
            separatorBuilder: (context, index) => AppSpacing.gapW12,
            itemBuilder: (context, index) {
              return _attachmentItem(context, state.documents[index]);
            },
          ),
        );
      },
    );
  }

  Widget _attachmentItem(BuildContext context, Document document) {
    final child = !document.isMedia
        ? SizedBox(
            width: _kFilePreviewWidth.toDouble(),
            child: DocumentPreviewWidget(
              document: document,
              height: _kAttachmentPreviewHeight,
            ),
          )
        : MediaViewer(
            LocalMedia.fromDocument(document),
            width: _kAttachmentPreviewWidth,
            height: _kAttachmentPreviewHeight,
            borderRadius: BorderRadius.circular(Sizes.s8),
            boxShadow: [BoxShadowConstants.defaultBoxShadow],
            isPreview: true,
          );

    return Stack(
      children: [
        child,
        Positioned(
          top: 0,
          right: Sizes.s2,
          child: _buildCloseButton(context, document),
        ),
      ],
    );
  }

  Widget _buildCloseButton(BuildContext context, Document document) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
        boxShadow: [BoxShadowConstants.defaultBoxShadow],
      ),
      child: AppIcon(
        icon: AppIcons.close,
        size: Sizes.s12,
        isCircle: true,
        backgroundColor: AppColors.lightGray,
        padding: AppSpacing.edgeInsetsAll4,
        onTap: () => _onRemoveAttachment(context, document),
      ),
    );
  }
}
