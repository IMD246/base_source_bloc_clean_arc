import 'package:flutter/material.dart';

import '../../resource/styles/styles.dart';
import 'user_avatar.dart';

class OnlineUserAvatar extends UserAvatar {
  const OnlineUserAvatar({
    required super.url,
    required this.isOnline,
    super.size,
    super.key,
  });

  final bool isOnline;

  @override
  Widget build(BuildContext context) {
    if (!isOnline) {
      return super.build(context);
    }

    return Stack(
      children: [
        super.build(context),
        Positioned(
          right: 0,
          top: Sizes.s2,
          child: Container(
            width: Sizes.s10,
            height: Sizes.s10,
            decoration: const BoxDecoration(
              color: AppColors.green,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
