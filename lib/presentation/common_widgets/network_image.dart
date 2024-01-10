import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../resource/resource.dart';
import 'common_widgets.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage(
    this.url, {
    super.key,
    this.fit,
    this.placeholder,
    this.errorWidget,
    this.imageBuilder,
    this.width,
    this.height,
    this.fadeOutDuration,
    this.fadeOutCurve = Curves.easeOut,
    this.useOldImageOnUrlChange = false,
    this.memCacheSize,
    this.loadingBackgroundColor,
  });

  final String url;
  final BoxFit? fit;
  final Widget? placeholder;
  final Widget? errorWidget;
  final Widget Function(BuildContext context, ImageProvider imageProvider)?
      imageBuilder;
  final double? width;
  final double? height;
  final Duration? fadeOutDuration;
  final Curve fadeOutCurve;
  final bool useOldImageOnUrlChange;
  final Color? loadingBackgroundColor;
  final Size? memCacheSize;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      key: ValueKey(url),
      imageUrl: url,
      width: width,
      height: height,
      fit: fit,
      placeholder: (_, __) => placeholder ?? _buildDefaultPlaceHolder(),
      errorWidget: (_, __, dynamic error) => _buildErrorWidget(),
      imageBuilder: imageBuilder,
      fadeOutDuration: fadeOutDuration,
      fadeInDuration: Duration.zero,
      fadeOutCurve: fadeOutCurve,
      useOldImageOnUrlChange: useOldImageOnUrlChange,
      memCacheWidth: (memCacheSize?.width ?? width) != null
          ? (memCacheSize?.width ?? width)!.round()
          : null,
      memCacheHeight: (memCacheSize?.height ?? height) != null
          ? (memCacheSize?.height ?? height)!.round()
          : null,
    );
  }

  Widget _buildDefaultPlaceHolder() {
    return AppDefaultLoading(size: (height ?? width ?? Sizes.s64) / 2);
  }

  Widget _buildErrorWidget() {
    return errorWidget ?? AppSpacing.emptyBox;
  }
}

class AppCachedNetworkImageProvider extends CachedNetworkImageProvider {
  const AppCachedNetworkImageProvider(super.url);
}
