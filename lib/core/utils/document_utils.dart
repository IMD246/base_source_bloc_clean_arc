import 'dart:io';

import '../../domain/entities/enums/media_type_enum.dart';
import 'file_utils.dart';

class DocumentUtils {
  static Future<DocumentType> getDocumentTypeFromFile(File file) async {
    final String mediaMime = await FileUtils.getFileMimeType(file);

    final String mediaMimeType = mediaMime.split('/').first;

    switch (mediaMimeType) {
      case 'video':
        return DocumentType.video;
      case 'image':
        return DocumentType.image;
      default:
        return DocumentType.other;
    }
  }
}
