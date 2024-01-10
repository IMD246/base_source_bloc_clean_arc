part of '../chat_detail_page.dart';

const _kUserAvatarSize = Sizes.s32;

class _MessageTile extends StatefulWidget {
  const _MessageTile(
    this.message, {
    this.isEndMessageSection = false,
    super.key,
  });

  final Message message;
  final bool isEndMessageSection;

  @override
  State<_MessageTile> createState() => _MessageTileState();
}

class _MessageTileState extends State<_MessageTile> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => widget.message.documents.isNotEmpty;

  Future<void> _showMessageOptions(BuildContext context) async {
    final bloc = context.read<ChatDetailBloc>();

    return ViewUtils.showBottomSheet<void>(
      context,
      child: BlocProvider.value(
        value: bloc,
        child: _MessageOptionsBottomSheet(
          widget.message,
          onCopyMessage: () => _copyMessage(context),
          onDeleteMessage: () => _onDeleteMessage(context),
          onEditMessage: () => _onEditMessage(context),
        ),
      ),
    );
  }

  void _copyMessage(BuildContext context) {
    ViewUtils.copyToClipboard(widget.message.content);
    ViewUtils.showAppSnackBar(context, context.l10n.chat_detail__copy);
  }

  void _onDeleteMessage(BuildContext context) {
    ViewUtils.showAlertDialog<void>(
      context,
      title: context.l10n.chat_detail__delete_message,
      message: context.l10n.chat_detail__delete_message_confirmation,
      negativeText: context.l10n.button__cancel,
      positiveText: context.l10n.button__delete,
      onPositivePressed: () {
        context.pop();
        context.read<ChatDetailBloc>().add(DeleteMessage(widget.message));
      },
    );
  }

  void _onReplyMessage(BuildContext context) {
    context.read<ChatDetailBloc>().add(ActiveToReplyMessage(widget.message));
  }

  void _onEditMessage(BuildContext context) {
    context.read<ChatDetailBloc>().add(ActiveEditingMessage(widget.message));
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Padding(
      padding: EdgeInsets.only(bottom: widget.isEndMessageSection ? Sizes.s12 : Sizes.s8),
      child: Row(
        mainAxisAlignment: widget.message.isMyMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!widget.message.isMyMessage)
            (widget.isEndMessageSection)
                ? Padding(
                    padding: AppSpacing.edgeInsetsOnlyRight8,
                    child: _buildUserAvatar(),
                  )
                : const SizedBox(width: _kUserAvatarSize + Sizes.s8),
          Flexible(child: _buildMessageContent(context)),
        ],
      ),
    );
  }

  Widget _buildMessageContent(BuildContext context) {
    final messageContent = GestureDetector(
      onLongPress: () => _showMessageOptions(context),
      child: _MessageContent(
        widget.message,
        isEndMessageSection: widget.isEndMessageSection,
      ),
    );

    return _SwipeToReply(
      onReply: () => _onReplyMessage(context),
      isMyMessage: widget.message.isMyMessage,
      child: messageContent,
    );
  }

  Widget _buildUserAvatar() {
    final avatar = UserAvatar(
      url: widget.message.sender.profilePhoto!,
      size: _kUserAvatarSize,
    );

    return widget.message.reactions.isNotEmpty || (widget.message.isMyMessage || widget.isEndMessageSection)
        ? Padding(
            padding: AppSpacing.edgeInsetsOnlyBottom16,
            child: avatar,
          )
        : avatar;
  }
}

class _MessageContent extends StatelessWidget {
  const _MessageContent(
    this.message, {
    this.asParentMessage = false,
    this.isEndMessageSection = false,
  });

  final Message message;
  final bool asParentMessage;
  final bool isEndMessageSection;

  void _onReact(BuildContext context, ReactionType type) {
    context.read<ChatDetailBloc>().add(ReactMessage(message, type));
  }

  @override
  Widget build(BuildContext context) {
    Widget child = _buildBody();

    if (!message.isMyMessage && !asParentMessage) {
      child = Row(
        children: [
          child,
          AppSpacing.gapW4,
          _ToReactionButton((reaction) => _onReact(context, reaction)),
        ],
      );
    }

    if (!asParentMessage && message.parentMessage != null) {
      child = Column(
        crossAxisAlignment: message.isMyMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Transform.translate(
            offset: const Offset(0, Sizes.s8),
            child: Opacity(
              opacity: 0.5,
              child: _MessageContent(message.parentMessage!, asParentMessage: true),
            ),
          ),
          child,
        ],
      );
    }

    return child;
  }

  Widget _buildBody() {
    final child = _buildTextMessage();

    if (message.documents.isNotEmpty) {
      return Column(
        crossAxisAlignment: message.isMyMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          _MessageAttachmentsWidget(message, isParentMessage: asParentMessage),
          if (message.content.isNotEmpty) AppSpacing.gapH4,
          child,
        ],
      );
    }

    if (!asParentMessage && !message.isMyMessage && (isEndMessageSection || message.reactions.isNotEmpty)) {
      return Stack(
        children: [
          Padding(
            padding: AppSpacing.edgeInsetsOnlyBottom16,
            child: child,
          ),
          if (message.reactions.isNotEmpty)
            Positioned(
              bottom: 0,
              right: Sizes.s2,
              child: _ReactionEmoji(message: message),
            ),
          if (isEndMessageSection && message.reactions.isEmpty)
            Positioned(
              bottom: 0,
              right: Sizes.s2,
              child: _SmartHeartReactionButton(message: message),
            ),
        ],
      );
    }

    return child;
  }

  Widget _buildTextMessage() {
    if (message.content.isEmpty) {
      return AppSpacing.emptyBox;
    }

    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: kTextMessageMinWidth,
        maxWidth: kTextMaxWidthScreenPercentage.sw,
      ),
      child: Container(
        padding: AppSpacing.edgeInsetsAll8.copyWith(
          bottom: asParentMessage ? Sizes.s16 : Sizes.s8,
        ),
        decoration: BoxDecoration(
          color: _getBackgroundColor(),
          borderRadius: BorderRadius.circular(Sizes.s8),
        ),
        child: Text(
          message.content,
          style: AppTextStyles.bodyLarge.copyWith(
            color: _getTextColor(),
          ),
        ),
      ),
    );
  }

  Color _getTextColor() {
    if (asParentMessage) {
      return AppColors.gray;
    }

    return message.isMyMessage ? AppColors.white : AppColors.black;
  }

  Color _getBackgroundColor() {
    if (asParentMessage) {
      return AppColors.lightGray3;
    }

    return message.isMyMessage ? AppColors.primary : AppColors.lightGray2;
  }

  // Widget _buildReaction(ReactionType reaction) {
  //   final icon = ChatHelper.getReactionIcon(reaction);

  //   return Container(
  //     margin: const EdgeInsets.all(1.0),
  //     padding: const EdgeInsets.symmetric(horizontal: Sizes.s4, vertical: Sizes.s2),
  //     decoration: BoxDecoration(
  //       color: AppColors.white,
  //       borderRadius: BorderRadius.circular(Sizes.s16),
  //       boxShadow: [BoxShadowConstants.defaultBoxShadow],
  //     ),
  //     child: icon.image(
  //       width: Sizes.s16,
  //       height: Sizes.s16,
  //     ),
  //   );
  // }
}

class _ReactionEmoji extends StatelessWidget {
  const _ReactionEmoji({
    required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    final icon = ChatHelper.getReactionIcon(message.reactions.first.type);

    return Container(
      margin: const EdgeInsets.all(1.0),
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s4, vertical: Sizes.s2),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(Sizes.s16),
        boxShadow: [BoxShadowConstants.defaultBoxShadow],
      ),
      child: icon.image(
        width: Sizes.s16,
        height: Sizes.s16,
      ),
    ).clickable(() => context.read<ChatDetailBloc>().add(RemoveReaction(message, message.reactions.first)));
  }
}

class _SmartHeartReactionButton extends StatelessWidget {
  const _SmartHeartReactionButton({
    required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.s16),
        boxShadow: [BoxShadowConstants.defaultBoxShadow],
        color: AppColors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s4, vertical: Sizes.s2),
      child: const AppIcon(
        icon: AppIcons.hearOutline,
        size: 14.0,
        color: AppColors.gray,
      ),
    ).clickable(() => context.read<ChatDetailBloc>().add(ReactMessage(message, ReactionType.heart)));
  }
}
