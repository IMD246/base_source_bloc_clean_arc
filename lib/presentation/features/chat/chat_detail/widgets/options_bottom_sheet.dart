part of '../chat_detail_page.dart';

class _MessageOptionsBottomSheet extends StatelessWidget {
  const _MessageOptionsBottomSheet(
    this.message, {
    required this.onCopyMessage,
    required this.onDeleteMessage,
    required this.onEditMessage,
  });

  final Message message;
  final VoidCallback onCopyMessage;
  final VoidCallback onDeleteMessage;
  final VoidCallback onEditMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildOptionItem(context, context.l10n.chat_detail__copy, onCopyMessage),
        if (message.isMyMessage) ...[
          _buildOptionItem(context, context.l10n.chat_detail__edit, onEditMessage),
          _buildOptionItem(context, context.l10n.chat_detail__delete, onDeleteMessage),
        ],
      ],
    );
  }

  Widget _buildOptionItem(BuildContext context, String text, VoidCallback onTap) {
    return ListTile(
      onTap: () {
        Navigator.pop(context);
        onTap();
      },
      title: Text(text, style: AppTextStyles.bodyLarge.bold),
    );
  }
}
