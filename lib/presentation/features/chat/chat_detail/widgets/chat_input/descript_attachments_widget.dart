import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/utils.dart';
import '../../../../../../domain/domain.dart';
import '../../../../../common_widgets/common_app_bar.dart';
import '../../../../../common_widgets/common_scaffold.dart';
import '../../../../../common_widgets/media_viewer.dart';
import '../../../../../resource/resource.dart';

class AttachmentsInputWidget extends StatefulWidget {
  const AttachmentsInputWidget({
    required this.files,
    super.key,
  });

  final List<File> files;

  @override
  State<AttachmentsInputWidget> createState() => _AttachmentsInputWidgetState();
}

class _AttachmentsInputWidgetState extends State<AttachmentsInputWidget> {
  final CarouselControllerImpl _controller = CarouselControllerImpl();

  late List<InputAttachmentModel> attachmentModels;
  final Map<String, DocumentType> _documentTypes = {};

  @override
  void initState() {
    super.initState();
    // create a list of AttachmentModel map with file and description
    attachmentModels = widget.files.map((file) => InputAttachmentModel(file, '')).toList(growable: false);
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(leadingIcon: LeadingIcon.close),
      body: widget.files.length == 1
          ? _buildCarouselItem(0)
          : CarouselSlider.builder(
              carouselController: _controller,
              itemCount: widget.files.length,
              itemBuilder: (_, int index, __) {
                return _buildCarouselItem(index);
              },
              options: CarouselOptions(
                enableInfiniteScroll: false,
                viewportFraction: 1,
                height: double.infinity,
                onPageChanged: (_, __) {},
              ),
            ),
    );
  }

  Widget _buildCarouselItem(int index) {
    return Stack(
      children: <Widget>[
        _buildMedia(widget.files[index]),
        _buildDescriptionField(index),
      ],
    );
  }

  Widget _buildMedia(File file) {
    if (_documentTypes.containsKey(file.path)) {
      return MediaViewer(
        LocalMedia.fromDocument(
          Document.fromFile(file, type: _documentTypes[file.path]!),
        ),
      );
    }

    return FutureBuilder(
      future: DocumentUtils.getDocumentTypeFromFile(file),
      builder: (_, AsyncSnapshot<DocumentType> snapshot) {
        if (!snapshot.hasData) {
          return AppSpacing.emptyBox;
        }

        _documentTypes[file.path] = snapshot.data!;

        return MediaViewer(
          LocalMedia.fromDocument(
            Document.fromFile(file, type: snapshot.data!),
          ),
        );
      },
    );
  }

  Widget _buildDescriptionField(int index) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: TextField(
          onChanged: (String value) {
            attachmentModels[index] = InputAttachmentModel(widget.files[index], value);
          },
        ),
      ),
    );
  }
}

class InputAttachmentModel {
  InputAttachmentModel(this.file, this.description);

  final File file;
  final String description;
}
