import 'package:flutter/material.dart';

import '../../../core/extensions/extensions.dart';
import '../../resource/styles/styles.dart';
import '../app_icon.dart';
import 'user_avatar.dart';

class RemovableUserAvatar extends UserAvatar {
  const RemovableUserAvatar({
    required super.url,
    super.size,
    this.onRemove,
    super.key,
  });

  final VoidCallback? onRemove;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: onRemove == null
              ? EdgeInsets.zero
              : const EdgeInsets.only(
                  right: Sizes.s4,
                  top: Sizes.s4,
                ),
          child: super.build(context),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.white, width: 2),
            ),
            child: AppIcon(
              icon: AppIcons.closeLight,
              color: AppColors.white,
              size: Sizes.s16,
              padding: AppSpacing.edgeInsetsAll4,
            ).clickable(() => onRemove?.call()),
          ),
        ),
      ],
    );
  }
}
