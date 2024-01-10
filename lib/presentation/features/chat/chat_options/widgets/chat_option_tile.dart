import 'package:flutter/material.dart';

import '../../../../common_widgets/app_icon.dart';
import '../../../../resource/styles/styles.dart';

class ChatOptionTile extends StatelessWidget {
  const ChatOptionTile({
    required this.title,
    required this.icon,
    this.onTap,
    super.key,
  });

  final String title;
  final Object icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AppIcon(icon: icon),
      title: Text(title, style: AppTextStyles.bodyLarge),
      onTap: onTap,
      horizontalTitleGap: Sizes.s4,
    );
  }
}
