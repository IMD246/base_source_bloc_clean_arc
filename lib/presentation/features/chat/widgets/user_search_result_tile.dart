import 'package:flutter/material.dart';

import '../../../../domain/entities/user.dart';
import '../../../common_widgets/avatar/avatar.dart';
import '../../../common_widgets/selectable_item_icon.dart';

class UserSearchResultTile extends StatelessWidget {
  const UserSearchResultTile(
    this.user, {
    this.isSelected,
    this.onTap,
    super.key,
  });

  final User user;
  final bool? isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: UserAvatar(url: user.profilePhoto ?? ''),
      title: Text(user.fullName),
      trailing: isSelected != null ? SelectableItemIcon(isSelected!) : null,
      onTap: onTap,
    );
  }
}
