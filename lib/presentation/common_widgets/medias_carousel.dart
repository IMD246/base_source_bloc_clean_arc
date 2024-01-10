import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../domain/domain.dart';
import '../resource/resource.dart';
import 'common_widgets.dart';

class MediasViewerCarouselPage extends StatefulWidget {
  const MediasViewerCarouselPage(
    this.medias, {
    super.key,
    this.initialIndex = 0,
  });

  final List<Media> medias;
  final int initialIndex;

  @override
  State<MediasViewerCarouselPage> createState() => _MediasViewerCarouselPageState();
}

class _MediasViewerCarouselPageState extends State<MediasViewerCarouselPage> {
  final CarouselControllerImpl _controller = CarouselControllerImpl();

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      applyAutoPaddingBottom: true,
      appBar: CommonAppBar(leadingIcon: LeadingIcon.close),
      body: CarouselSlider.builder(
        carouselController: _controller,
        itemCount: widget.medias.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          final media = widget.medias[index];

          return Padding(
            padding: AppSpacing.edgeInsetsH16.copyWith(bottom: 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(child: MediaViewer(media, fit: BoxFit.contain)),
                ),
              ],
            ),
          );
        },
        options: CarouselOptions(
          initialPage: widget.initialIndex,
          scrollPhysics:
              widget.medias.length > 1 ? const BouncingScrollPhysics() : const NeverScrollableScrollPhysics(),
          enableInfiniteScroll: false,
          viewportFraction: 1,
          height: double.infinity,
          onPageChanged: (_, __) {},
        ),
      ),
    );
  }
}
