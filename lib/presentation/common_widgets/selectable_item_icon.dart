import 'package:flutter/material.dart';

import '../resource/resource.dart';
import 'app_icon.dart';

class SelectableItemIcon extends StatelessWidget {
  const SelectableItemIcon(this.isSelected, {super.key});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? AppColors.primary : null,
        border: !isSelected ? Border.all(color: AppColors.gray) : null,
      ),
      child: isSelected
          ? AppIcon(
              icon: AppIcons.checkLight,
              color: AppColors.white,
              size: Sizes.s12,
              padding: AppSpacing.edgeInsetsAll4,
            )
          : const SizedBox.square(dimension: Sizes.s16),
    );
  }
}
