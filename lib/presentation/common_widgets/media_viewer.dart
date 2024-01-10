import 'dart:io';

import 'package:flutter/material.dart';

import '../../core/extensions/extensions.dart';
import '../../core/utils/utils.dart';
import '../../domain/entities/entities.dart';
import '../resource/resource.dart';
import 'common_widgets.dart';

const _kDefaultWidth = 150.0;
const _kDefaultHeight = 200.0;

class MediaViewer extends StatelessWidget {
  const MediaViewer(
    this.media, {
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius = const BorderRadius.all(Radius.circular(Sizes.s8)),
    this.boxShadow,
    this.onTap,
    this.isPreview = false,
  });

  final Media media;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BorderRadius borderRadius;
  final List<BoxShadow>? boxShadow;
  final VoidCallback? onTap;
  final bool isPreview;

  void _onTap() {
    if (onTap != null) {
      onTap!();
    }
  }

  @override
  Widget build(BuildContext context) {
    late Widget child;

    switch (media.runtimeType) {
      case LocalMedia:
        child = _buildLocalMedia(media as LocalMedia);
        break;
      case RemoteMedia:
        child = _buildRemoteMedia(media as RemoteMedia);
        break;
      default:
        _buildUnsupportedMedia();
    }

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Colors.white,
        boxShadow: boxShadow,
      ),
      child: ClipRRect(borderRadius: borderRadius, child: child),
    ).clickable(_onTap);
  }

  Widget _buildRemoteMedia(RemoteMedia media) {
    switch (media.type) {
      case DocumentType.image:
        return AppNetworkImage(
          media.url,
          key: ValueKey(media.url),
          fit: fit,
          errorWidget: _buildDefaultFallback(),
          imageBuilder: (context, imageProvider) => Image(
            image: imageProvider,
            fit: fit,
          ),
        );
      case DocumentType.video:
        return isPreview ? _buildRemoteVideoThumbnail(media) : _buildPlayableVideo(media);
      default:
        throw Exception('Unsupported media type');
    }
  }

  Widget _buildLocalMedia(LocalMedia media) {
    switch (media.type) {
      case DocumentType.image:
        return Image.file(
          media.file,
          fit: fit,
        );
      case DocumentType.video:
        return isPreview ? _buildVideoThumbnailFromFile(media.thumbnailFile!) : _buildPlayableVideo(media);
      default:
        throw Exception('Unsupported media type');
    }
  }

  Widget _buildVideoThumbnailFromFile(File file) {
    return Stack(
      children: [
        Image.file(file, fit: fit),
        Positioned.fill(
          child: _buildPlayButton(),
        ),
      ],
    );
  }

  Widget _buildPlayButton() {
    return Container(
      color: Colors.black.withOpacity(0.2),
      alignment: Alignment.center,
      child: const AppIcon(icon: AppIcons.play, color: Colors.white),
    );
  }

  Widget _buildRemoteVideoThumbnail(RemoteMedia media) {
    final cachedThumbnail = MediaUtils.getVideoThumbnailFormCache(media.url);
    if (cachedThumbnail != null) {
      return _buildVideoThumbnailFromFile(cachedThumbnail);
    }

    return FutureBuilder(
      future: MediaUtils.getVideoThumbnail(url: media.url),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return _buildDefaultLoading();
        }

        if (!snapshot.hasData) {
          return _buildVideoThumbnailFallback();
        }

        return _buildVideoThumbnailFromFile(snapshot.data);
      },
    );
  }

  Widget _buildPlayableVideo(Media media) {
    return AppVideoPlayer(
      media.urlOrPath,
      borderRadius: borderRadius,
      fit: fit,
      autoPlay: true,
    );
  }

  Widget _buildDefaultLoading() {
    return Container(
      color: AppColors.lightGray,
      width: _kDefaultWidth,
      height: _kDefaultHeight,
      alignment: Alignment.center,
      child: const AppDefaultLoading(size: Sizes.s24),
    );
  }

  Widget _buildDefaultFallback() {
    return Container(
      width: _kDefaultWidth,
      height: _kDefaultHeight,
      color: AppColors.lightGray,
      alignment: Alignment.center,
      child: const AppIcon(icon: AppIcons.media),
    );
  }

  Widget _buildUnsupportedMedia() {
    return Container(
      color: AppColors.lightGray,
      child: Row(
        children: [
          const AppIcon(icon: AppIcons.media),
          AppSpacing.gapW8,
          Text(media.type.toString()),
        ],
      ),
    );
  }

  Widget _buildVideoThumbnailFallback() {
    return Stack(
      children: [
        AppVideoPlayer(
          media.urlOrPath,
          width: _kDefaultWidth,
          height: _kDefaultHeight,
          borderRadius: borderRadius,
          fit: fit,
          isThumbnailMode: true,
        ),
        Positioned.fill(child: _buildPlayButton()),
      ],
    );
  }
}
