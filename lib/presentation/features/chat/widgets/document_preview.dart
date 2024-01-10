import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/utils/utils.dart';
import '../../../../domain/domain.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../resource/resource.dart';

const _kDefaultHeight = 60.0;

class DocumentPreviewWidget extends StatelessWidget {
  const DocumentPreviewWidget({
    required this.document,
    this.onTap,
    this.height = _kDefaultHeight,
    this.showSize = true,
    super.key,
  });

  final Document document;
  final VoidCallback? onTap;
  final double height;
  final bool showSize;

  void _openFile() {
    IntentUtils.openBrowserURL(url: document.url);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: AppSpacing.edgeInsetsH12V8,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: AppSpacing.borderRadius8,
        boxShadow: [BoxShadowConstants.defaultBoxShadow],
        border: Border.all(color: AppColors.lightGray),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildIcon(),
          AppSpacing.gapW12,
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  document.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.bodyMedium,
                ),
                if (document.size != null && showSize) ...[
                  AppSpacing.gapH4,
                  Text(
                    maxLines: 1,
                    FileUtils.formatFileSize(document.size!),
                    style: AppTextStyles.bodySmall.toColor(AppColors.gray),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    ).clickable(onTap ?? _openFile);
  }

  Widget _buildIcon() {
    return const AppIcon(
      icon: AppIcons.attachment,
      color: AppColors.gray,
      size: Sizes.s16,
    );
  }
}
