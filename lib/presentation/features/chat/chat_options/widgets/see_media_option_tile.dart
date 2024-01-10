import 'package:flutter/material.dart';

import '../../../../../core/extensions/context_extensions.dart';
import '../../../../../domain/entities/chat/conversation.dart';
import '../../../../common_widgets/app_icon.dart';
import '../../chat_media/chat_media_page.dart';
import 'chat_option_tile.dart';

class SeeMediaOptionTile extends StatelessWidget {
  const SeeMediaOptionTile({
    required this.conversation,
    super.key,
  });

  final Conversation conversation;

  void _goToChatMediaPage(BuildContext context) {
    context.push(ChatMediaPage(conversation: conversation));
  }

  @override
  Widget build(BuildContext context) {
    return ChatOptionTile(
      icon: AppIcons.media,
      title: context.l10n.chat_options__sent_photos_n_videos,
      onTap: () => _goToChatMediaPage(context),
    );
  }
}
