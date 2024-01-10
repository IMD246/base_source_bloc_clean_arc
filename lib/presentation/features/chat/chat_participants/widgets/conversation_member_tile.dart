import 'package:flutter/material.dart';

import '../../../../../core/extensions/extensions.dart';
import '../../../../../domain/entities/chat/chat.dart';
import '../../../../common_widgets/avatar/user_avatar.dart';
import '../../../../resource/styles/text_styles.dart';

class ConversationMemberTile extends StatelessWidget {
  const ConversationMemberTile(this.member, {super.key});

  final ConversationMember member;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: UserAvatar(
        url: member.profilePhoto ?? '',
      ),
      title: Text(
        member.fullName,
        style: AppTextStyles.bodyLarge.bold,
      ),
      subtitle: member.emailAddress != null
          ? Text(
              member.emailAddress!,
              style: AppTextStyles.bodyMedium.gray,
            )
          : null,
    );
  }
}
