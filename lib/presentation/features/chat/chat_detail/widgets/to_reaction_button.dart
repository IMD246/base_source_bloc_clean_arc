part of '../chat_detail_page.dart';

class _ToReactionButton extends StatefulWidget {
  const _ToReactionButton(this.onReact);

  final void Function(ReactionType) onReact;

  @override
  State<_ToReactionButton> createState() => _ToReactionButtonState();
}

class _ToReactionButtonState extends State<_ToReactionButton> {
  GlobalKey globalKey = GlobalKey();

  void _onReact(ReactionType reaction) {
    Future.delayed(AppDurationConstants.delayMessageReaction, () => widget.onReact(reaction));
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return AppIcon(
      key: globalKey,
      icon: AppIcons.emoji,
      size: Sizes.s16,
      color: AppColors.gray,
      padding: AppSpacing.edgeInsetsAll4,
      onTap: _showOverLay,
    );
  }

  Future<void> _showOverLay() async {
    final renderBox = globalKey.currentContext!.findRenderObject() as RenderBox?;
    final offset = renderBox!.localToGlobal(Offset.zero);

    final overlayState = Overlay.of(context);

    await showMenu<void>(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.s32)),
      color: Colors.white,
      position: RelativeRect.fromRect(
        Rect.fromPoints(
          offset,
          offset.translate(renderBox.size.width, renderBox.size.height),
        ),
        Offset.zero & overlayState.context.size!,
      ),
      items: [
        PopupMenuItem(height: Sizes.s32, child: _ReactionsWidget(_onReact)),
      ],
    );
  }
}

class _ReactionsWidget extends StatefulWidget {
  const _ReactionsWidget(this.onReact);
  final void Function(ReactionType) onReact;

  @override
  State<_ReactionsWidget> createState() => _ReactionsWidgetState();
}

class _ReactionsWidgetState extends State<_ReactionsWidget> {
  void _onReact(ReactionType e) {
    widget.onReact(e);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: ReactionType.values.map(_buildReactionItem).toList(),
    );
  }

  Widget _buildReactionItem(ReactionType reaction) {
    final icon = ChatHelper.getReactionGif(reaction);

    return Padding(
      padding: AppSpacing.edgeInsetsAll4,
      child: icon.image(
        width: Sizes.s24,
        height: Sizes.s24,
      ),
    ).clickable(() => _onReact(reaction));
  }
}
