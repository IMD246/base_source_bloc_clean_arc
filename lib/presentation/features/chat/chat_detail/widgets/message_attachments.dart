part of '../chat_detail_page.dart';

class _MessageAttachmentsWidget extends StatelessWidget {
  const _MessageAttachmentsWidget(this.message, {this.isParentMessage = false});

  final Message message;
  final bool isParentMessage;

  List<Document> get documents => message.documents;

  void _onViewAttachments(BuildContext context, Document media) {
    final medias = documents.where((element) => element.isMedia).map(RemoteMedia.fromDocument).toList();

    ViewUtils.showBottomSheet(
      context,
      child: MediasViewerCarouselPage(
        medias,
        initialIndex: medias.indexOf(RemoteMedia.fromDocument(media)),
      ),
      isScrollControlled: true,
      padding: EdgeInsets.zero,
      backgroundColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isParentMessage) {
      return _buildParentMessageAttachments(context);
    }

    if (documents.length == 1) {
      return _buildAttachmentItem(
        context: context,
        document: documents.first,
        maxWidth: context.width * kMediaMaxWidthScreenPercentage,
      );
    }

    final medias = documents.where((element) => element.isMedia).toList();
    final otherDocuments = documents.where((element) => !element.isMedia).toList();

    Widget? otherDocumentsContainer;
    Widget? mediasContainer;

    if (otherDocuments.isNotEmpty) {
      otherDocumentsContainer = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final document in otherDocuments) ...[
            _buildAttachmentItem(
              context: context,
              document: document,
              maxWidth: context.width * kMediaMaxWidthScreenPercentage,
            ),
            AppSpacing.gapH4,
          ],
        ],
      );
    }

    if (medias.isNotEmpty) {
      mediasContainer = ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: context.width * kMediaMaxWidthScreenPercentage,
        ),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: documents.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: documents.length > 4 ? 3 : 2,
            crossAxisSpacing: Sizes.s2,
            mainAxisSpacing: Sizes.s2,
          ),
          itemBuilder: (context, index) => _buildAttachmentItem(
            context: context,
            document: documents[index],
            maxWidth: double.infinity,
          ),
        ),
      );
    }

    if (otherDocumentsContainer != null && mediasContainer != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          otherDocumentsContainer,
          mediasContainer,
        ],
      );
    } else if (otherDocumentsContainer != null) {
      return otherDocumentsContainer;
    } else {
      return mediasContainer!;
    }
  }

  Widget _buildAttachmentItem({
    required BuildContext context,
    required Document document,
    required double maxWidth,
  }) {
    return IgnorePointer(
      ignoring: document.isLocal,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth, maxHeight: context.height * kMediaMaxHeightScreenPercentage),
        child: document.isMedia
            ? MediaViewer(
                MediaFactory.createFromDocument(document),
                onTap: () => _onViewAttachments(context, document),
                isPreview: true,
              )
            : DocumentPreviewWidget(document: document),
      ),
    );
  }

  Widget _buildParentMessageAttachments(BuildContext context) {
    return Container(
      padding: AppSpacing.edgeInsetsH12V8.copyWith(bottom: Sizes.s16),
      decoration: BoxDecoration(
        color: AppColors.lightGray3,
        borderRadius: BorderRadius.circular(Sizes.s8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const AppIcon(
            icon: AppIcons.attachment,
            color: AppColors.gray,
            size: Sizes.s16,
          ),
          AppSpacing.gapW8,
          Text(
            context.l10n.chat_detail__attachments,
            style: AppTextStyles.bodyMedium.gray,
          ),
        ],
      ),
    );
  }
}
