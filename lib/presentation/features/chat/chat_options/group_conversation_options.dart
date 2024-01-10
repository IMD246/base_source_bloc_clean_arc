part of 'chat_options_page.dart';

class _GroupConversationOptions extends StatelessWidget {
  const _GroupConversationOptions();

  void _onPressedDeleteConversation(BuildContext context) {
    ViewUtils.showAlertDialog<void>(
      context,
      title: context.l10n.chat_options__leave_conversation,
      message: context.l10n.chat_options__leave_conversation_confirmation,
      negativeText: context.l10n.button__cancel,
      positiveText: context.l10n.button__delete,
      onPositivePressed: () {
        context.pop();
        context.read<ChatOptionsBloc>().add(DeleteConversation());
      },
    );
  }

  void _goToParticipantsPage(BuildContext context) {
    context.pushRoute(
      ChatParticipantsRoute(conversation: context.read<ChatOptionsBloc>().conversation),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatOptionTile(
          icon: AppIcons.delete,
          title: context.l10n.chat_options__leave_conversation,
          onTap: () => _onPressedDeleteConversation(context),
        ),
        ChatOptionTile(
          icon: AppIcons.peopleLight,
          title: context.l10n.chat_options__see_participants,
          onTap: () => _goToParticipantsPage(context),
        ),
        SeeMediaOptionTile(conversation: context.read<ChatOptionsBloc>().conversation),
      ],
    );
  }
}
