import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
import 'package:ffmpeg_kit_flutter/return_code.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:uuid/uuid.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../domain/entities/entities.dart';
import 'utils.dart';

const _kDefaultThumbnailCacheFolder = 'thumbnailCache';
const _kDefaultMediaCacheFolder = 'mediaCache';

// const _defaultThumbnailMaxWidth = 100;

class MediaUtils {
  MediaUtils._();

  static final Map<String, File> _thumbnailCache = {};
  // static const Uuid _uuid = Uuid();
  static final _logger = LogUtils.getLogger('MediaUtils');

  static Future<Uint8List?> _getVideoThumbnailData(String pathOrUrl) async {
    try {
      return VideoThumbnail.thumbnailData(
        video: pathOrUrl,
        imageFormat: ImageFormat.JPEG,
      );
    } catch (e) {
      _logger.e('_getVideoThumbnailData', e);

      return null;
    }
  }

  // static Future<File?> _getVideoThumbnailFile(String pathOrUrl) async {
  //   try {
  //     final path = await VideoThumbnail.thumbnailFile(
  //       video: pathOrUrl,
  //       thumbnailPath: await _getThumbnailCachePath(),
  //       imageFormat: ImageFormat.JPEG,
  //     );

  //     return path != null ? File(path) : null;
  //   } catch (e) {
  //     _logger.e('_getVideoThumbnailFile', e);

  //     return null;
  //   }
  // }

  static void clearAllThumbnail() {
    _thumbnailCache.clear();
  }

  static Future<File?> cropImage(File image, {double? ratioX, double? ratioY}) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatio: ratioX != null && ratioY != null ? CropAspectRatio(ratioX: ratioX, ratioY: ratioY) : null,
      // androidUiSettings: const AndroidUiSettings(
      //   toolbarColor: Colors.black,
      //   statusBarColor: Colors.black,
      //   toolbarWidgetColor: Colors.white,
      // ),
    );
    if (croppedFile != null) {
      return File(croppedFile.path);
    }

    return null;
  }

  @pragma('vm:entry-point')
  static Future<String> compressMediaWithIsolate(String filePath) async {
    return compressMedia(filePath).then((value) => value.urlOrPath);
  }

  @pragma('vm:entry-point')
  static Future<String?> getVideoThumbnailWithIsolate(String path) async {
    final data = await _getVideoThumbnailData(path);

    if (data != null) {
      final String imageName = basename(path);
      final thumbnailDir = await _getThumbnailCachePath();
      final String thumbnailPath = '$thumbnailDir/$imageName';

      final file = File(thumbnailPath);
      file.writeAsBytesSync(List.from(data));

      return thumbnailPath;
    }

    return null;
  }

  static Future<LocalMedia> compressMedia(String filePath) async {
    final File file = File(filePath);
    final DocumentType mediaType = await DocumentUtils.getDocumentTypeFromFile(file);

    if (mediaType == DocumentType.image) {
      final File compressedImage = await compressImage(file);

      return LocalMedia.image(compressedImage);
    } else if (mediaType == DocumentType.video) {
      final File compressedVideo = await compressVideo(file);

      return LocalMedia.video(compressedVideo);
    } else {
      _logger.e('Unsupported media type, return original media');

      return LocalMedia(file, type: mediaType);
    }
  }

  static Future<File> compressImage(File image) async {
    File resultFile;
    final Uint8List? compressedImageData = await FlutterImageCompress.compressWithFile(
      image.absolute.path,
      quality: 80,
    );
    if (compressedImageData != null) {
      _logger.i('Compressed image from ${image.lengthSync()} ===> ${compressedImageData.length}');

      final String imageName = basename(image.path);
      final tempPath = await _getTempPath();
      final String thumbnailPath = '$tempPath/$imageName';
      final file = File(thumbnailPath);
      file.writeAsBytesSync(List.from(compressedImageData));
      resultFile = file;
    } else {
      _logger.e('Failed to compress image, using original file');
      resultFile = image;
    }

    return resultFile;
  }

  static Future<File> compressVideo(File video) async {
    File resultFile;

    try {
      final String videoName = basename(video.path);
      final path = await _getTempPath();
      final String resultFilePath = '$path/$videoName';

      final session = await FFmpegKit.execute(
        '-i ${video.path} -c:v mpeg4 $resultFilePath',
      );

      final returnCode = await session.getReturnCode();

      if (ReturnCode.isSuccess(returnCode)) {
        resultFile = File(resultFilePath);

        _logger.i('Compressed video from ${video.lengthSync()} ===> ${resultFile.lengthSync()}');
      } else {
        _logger.e('Failed to compress video, using original file');
        resultFile = video;
      }
    } catch (e) {
      _logger.e('Failed to compress video, using original file');
      resultFile = video;
    }

    return resultFile;
  }

  static File? getVideoThumbnailFormCache(String url) {
    return _thumbnailCache[url];
  }

  static Future<File?> getVideoThumbnail({File? videoFile, String? url}) async {
    if (_thumbnailCache.containsKey(videoFile?.path ?? url!)) {
      return _thumbnailCache[videoFile?.path ?? url!];
    }

    final data = await _getVideoThumbnailData(videoFile?.path ?? url!);

    if (data != null) {
      final String imageName = basename(videoFile?.path ?? url!);
      final thumbnailDir = await _getThumbnailCachePath();
      final String thumbnailPath = '$thumbnailDir/$imageName';

      final file = File(thumbnailPath);
      file.writeAsBytesSync(List.from(data));

      _thumbnailCache[videoFile?.path ?? url!] = file;

      return file;
    }

    return null;
  }

  static Future<List<LocalMedia>> pickMedias({
    bool allowMultiple = true,
    FileType type = FileType.media,
  }) async {
    final List<LocalMedia> medias = [];
    List<File>? files;

    final FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: allowMultiple, type: type);
    if (result != null) {
      files = result.paths.map((path) => File(path!)).toList();
    } else {
      // User canceled the picker
    }

    if (files != null) {
      await Future.wait(
        files.map((file) async {
          final LocalMedia media = await convertFileToMedia(file);
          medias.add(media);
        }),
      );
    }

    return medias;
  }

  static Future<LocalMedia> convertFileToMedia(File file) async {
    final type = await DocumentUtils.getDocumentTypeFromFile(file);

    File? thumbnailFile;
    if (type == DocumentType.video) {
      thumbnailFile = await getVideoThumbnail(videoFile: file);
    }

    return LocalMedia(file, type: type, thumbnailFile: thumbnailFile);
  }

  static Future<LocalMedia> compressPostMediaItem(LocalMedia media) async {
    if (media.isImage) {
      media.file = await compressImage(media.file);
    } else if (media.isVideo) {
      media.file = await compressVideo(media.file);
    } else {
      _logger.e('Unsupported media type for compression');
    }

    return media;
  }

  static Future<String> _getTempPath() async {
    final Directory applicationsDocumentsDir = await getTemporaryDirectory();
    final dir = Directory(join(applicationsDocumentsDir.path, _kDefaultMediaCacheFolder));

    if (!(await dir.exists())) {
      await dir.create();
    }

    return dir.path;
  }

  static Future<String> _getThumbnailCachePath() async {
    final dir = Directory(join((await getTemporaryDirectory()).path, _kDefaultThumbnailCacheFolder));

    if (!(await dir.exists())) {
      await dir.create();
    }

    return dir.path;
  }
}
