import 'package:flutter/material.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../domain/entities/entities.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../resource/styles/styles.dart';

class ConversationMemberTile extends StatelessWidget {
  const ConversationMemberTile(
    this.member, {
    super.key,
    this.onRemove,
  });

  final ConversationMember member;
  final VoidCallback? onRemove;

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
      trailing: _buildTrailing(context),
    );
  }

  Widget? _buildTrailing(BuildContext context) {
    if (onRemove == null) {
      return null;
    }

    return AppIcon(
      icon: AppIcons.closeLight,
      color: AppColors.error,
      size: Sizes.s20,
      onTap: onRemove!,
    );
  }
}
