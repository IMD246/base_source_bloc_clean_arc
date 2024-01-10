part of '../conversations_page.dart';

class ConversationTitle extends StatelessWidget {
  const ConversationTitle(this.conversation, {super.key});

  final Conversation conversation;

  void _navigateToChatDetail(BuildContext context) {
    getIt.get<SocketNotificationBloc>().add(ReadConversation(parentDiscussionId: conversation.discussionId));
    context.pushRoute(ChatDetailRoute(conversation: conversation)).then((lastMessage) {
      if (lastMessage != null && lastMessage is Message) {
        context.read<ConversationsBloc>().add(UpdateLastMessage(conversation.discussionId, lastMessage));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        conversation.topic,
        style: AppTextStyles.bodyLarge.bold,
      ),
      subtitle: conversation.lastMessage != null
          ? Text(
              conversation.lastMessage!.content,
              style: AppTextStyles.bodyMedium.gray,
              maxLines: 1,
            )
          : null,
      leading: OnlineUserAvatar(
        url: conversation.imageUrl,
        isOnline: conversation.isOnline,
      ),
      trailing: _buildTrailing(context),
      onTap: () => _navigateToChatDetail(context),
    );
  }

  Widget _buildTrailing(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ChatHelper.formatChatTime(conversation.lastMessageAt),
          style: AppTextStyles.bodySmall.gray,
        ),
        const SizedBox(height: 8),
        if (conversation.unreadCount > 0)
          Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary,
            ),
            child: Text(
              conversation.unreadCount.toString(),
              style: AppTextStyles.labelSmall.copyWith(color: AppColors.white),
            ),
          ),
      ],
    );
  }
}
