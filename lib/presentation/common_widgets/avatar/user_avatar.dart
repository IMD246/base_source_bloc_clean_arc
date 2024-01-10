import 'package:flutter/material.dart';

import '../../resource/styles/styles.dart';
import '../app_icon.dart';
import '../network_image.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    required this.url,
    super.key,
    this.size = Sizes.s40,
  });

  final String url;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: AppNetworkImage(
        url,
        width: size,
        height: size,
        fit: BoxFit.contain,
        errorWidget: _buildDefaultFallback(),
      ),
    );
  }

  Widget _buildDefaultFallback() {
    return Container(
      width: size,
      height: size,
      color: AppColors.lightGray,
      alignment: Alignment.center,
      child: AppIcon(
        icon: AppIcons.avatarFallback,
        color: AppColors.gray,
      ),
    );
  }
}
