part of 'chat_options_page.dart';

class _PrivateConversationOptions extends StatelessWidget {
  const _PrivateConversationOptions();

  void _onPressedDeleteConversation(BuildContext context) {
    ViewUtils.showAlertDialog<void>(
      context,
      title: context.l10n.chat_options__delete_conversation,
      message: context.l10n.chat_options__delete_conversation_confirmation,
      negativeText: context.l10n.button__cancel,
      positiveText: context.l10n.button__delete,
      onPositivePressed: () {
        context.pop();
        context.read<ChatOptionsBloc>().add(DeleteConversation());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatOptionTile(
          icon: AppIcons.delete,
          title: context.l10n.chat_options__delete_conversation,
          onTap: () => _onPressedDeleteConversation(context),
        ),
        SeeMediaOptionTile(conversation: context.read<ChatOptionsBloc>().conversation),
      ],
    );
  }
}
