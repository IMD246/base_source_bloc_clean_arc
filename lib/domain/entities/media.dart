import 'dart:io';

import '../domain.dart';

abstract class Media {
  Media({
    required this.id,
    required this.urlOrPath,
    required this.type,
    this.thumbnailFile,
  });

  final int id;
  final String urlOrPath;
  final DocumentType type;
  File? thumbnailFile;

  set thumbnailUrlOrPath(File? thumbnailFile) {
    this.thumbnailFile = thumbnailFile;
  }

  bool get isImage => type == DocumentType.image;
  bool get isVideo => type == DocumentType.video;

  @override
  String toString() => 'Media(urlOrPath: $urlOrPath, type: $type)';
}

class LocalMedia extends Media {
  LocalMedia(this.file, {required DocumentType type, File? thumbnailFile})
      : super(
          id: DateTime.now().millisecondsSinceEpoch,
          urlOrPath: file.path,
          type: type,
          thumbnailFile: thumbnailFile,
        );

  factory LocalMedia.image(File file) => LocalMedia(file, type: DocumentType.image);
  factory LocalMedia.video(File file, {File? thumbnail}) =>
      LocalMedia(file, type: DocumentType.video, thumbnailFile: thumbnail);

  factory LocalMedia.fromDocument(Document document) {
    return LocalMedia(
      File(document.url),
      type: document.type,
      thumbnailFile: document.thumbnailFile,
    );
  }

  File file;

  // void delete() {
  //   final file = File(urlOrPath);

  //   if (file.existsSync()) {
  //     file.delete();
  //   }
  // }
}

class RemoteMedia extends Media {
  RemoteMedia({required int id, required this.url, required DocumentType type})
      : super(id: id, urlOrPath: url, type: type);

  factory RemoteMedia.fromDocument(Document document) {
    return RemoteMedia(
      id: document.id,
      url: document.url,
      type: document.type,
    );
  }

  final String url;
}

class MediaFactory {
  MediaFactory._();

  static Media createFromDocument(Document document) {
    if (document.isLocal) {
      return LocalMedia.fromDocument(document);
    }

    return RemoteMedia.fromDocument(document);
  }
}
