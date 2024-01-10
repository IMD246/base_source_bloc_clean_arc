import 'package:flutter/material.dart';

import '../../core/extensions/extensions.dart';
import '../resource/resource.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    required this.isActive,
    super.key,
    this.label,
    this.icon,
    this.onPressed,
    this.width,
    this.height,
    this.color,
    this.bgColor,
  }) : assert(
          label != null || icon != null,
          'Label or icon must be provided.',
        );

  const AppChip.active({
    super.key,
    this.label,
    this.icon,
    this.color = AppColors.blue,
    this.bgColor = AppColors.lightBlue,
    this.onPressed,
    this.width,
    this.height,
  })  : isActive = true,
        assert(
          label != null || icon != null,
          'Label or icon must be provided.',
        );

  const AppChip.noBackground({
    super.key,
    this.label,
    this.icon,
    this.color = AppColors.gray,
    this.bgColor = AppColors.white,
    this.onPressed,
    this.width,
    this.height,
  })  : isActive = false,
        assert(
          label != null || icon != null,
          'Label or icon must be provided.',
        );

  final String? label;
  final Widget? icon;
  final Color? color;
  final Color? bgColor;
  final VoidCallback? onPressed;
  // ignore: unused_field
  final bool isActive;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    var textColor = color ?? AppColors.primary;
    var bgColor = this.bgColor;

    if (color == null || bgColor != null) {
      if (isActive) {
        textColor = AppColors.blue;
        bgColor = AppColors.lightBlue;
      } else {
        textColor = AppColors.gray;
        bgColor = AppColors.white;
      }
    }

    final child = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) SizedBox.square(dimension: Sizes.s20, child: icon),
        if (icon != null && label != null) AppSpacing.gapW4,
        if (label != null)
          Text(label!, textAlign: TextAlign.center, style: AppTextStyles.bodyMedium.bold.toColor(textColor)),
      ],
    );

    final button = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.s32),
        ),
        shadowColor: Colors.transparent,
      ),
      onPressed: onPressed,
      child: child,
    );

    return SizedBox(
      width: width,
      height: height,
      child: button,
    );
  }
}
