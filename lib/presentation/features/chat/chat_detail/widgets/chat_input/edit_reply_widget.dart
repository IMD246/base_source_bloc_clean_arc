part of 'chat_input.dart';

class EditReplyWidget extends StatelessWidget {
  const EditReplyWidget({super.key});

  void _onClosed(BuildContext context) {
    if (context.read<ChatDetailBloc>().state.toReplyMessage != null) {
      _cancelToReplyMessage(context);
    } else {
      _cancelEditingMessage(context);
    }
  }

  void _cancelEditingMessage(BuildContext context) {
    context.read<ChatDetailBloc>().add(const ActiveEditingMessage(null));
  }

  void _cancelToReplyMessage(BuildContext context) {
    context.read<ChatDetailBloc>().add(const ActiveToReplyMessage(null));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatDetailBloc, ChatDetailState>(
      buildWhen: (previous, current) =>
          previous.editingMessage != current.editingMessage || previous.toReplyMessage != current.toReplyMessage,
      builder: (context, state) {
        if (state.toReplyMessage == null && state.editingMessage == null) {
          return AppSpacing.emptyBox;
        }

        final title = state.toReplyMessage != null
            ? context.l10n.chat_detail__reply_message
            : context.l10n.chat_detail__edit_message;
        final message = state.toReplyMessage ?? state.editingMessage!;

        return Padding(
          padding: AppSpacing.edgeInsetsH16V12.copyWith(bottom: 0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: Sizes.s12, vertical: Sizes.s4),
                  decoration:
                      const BoxDecoration(border: Border(left: BorderSide(color: AppColors.blue, width: Sizes.s2))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTextStyles.bodyMedium.copyWith(color: AppColors.blue, fontWeight: FontWeight.bold),
                      ),
                      AppSpacing.gapH4,
                      _buildMessagePreview(message),
                    ],
                  ),
                ),
              ),
              AppSpacing.gapW8,
              AppIcon(
                icon: AppIcons.close,
                color: AppColors.gray,
                size: Sizes.s16,
                isCircle: true,
                backgroundColor: AppColors.lightGray,
                padding: AppSpacing.edgeInsetsAll8,
                onTap: () => _onClosed(context),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMessagePreview(Message message) {
    if (message.content.isNotEmpty) {
      return Text(
        message.content,
        style: AppTextStyles.bodyMedium,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
    }

    if (message.documents.isNotEmpty) {
      return _buildAttachmentPreview(message.documents);
    }

    return AppSpacing.emptyBox;
  }

  Widget _buildAttachmentPreview(List<Document> documents) {
    return Container(
      margin: AppSpacing.edgeInsetsOnlyTop4,
      height: Sizes.s48,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: documents.length,
        separatorBuilder: (context, index) => AppSpacing.gapW8,
        itemBuilder: (context, index) {
          if (!documents[index].isMedia) {
            return DocumentPreviewWidget(
              document: documents[index],
              height: Sizes.s48,
              showSize: false,
            );
          }

          return MediaViewer(
            RemoteMedia.fromDocument(documents[index]),
            width: Sizes.s48,
            height: Sizes.s48,
            isPreview: true,
          );
        },
      ),
    );
  }
}
