// ignore_for_file: invalid_annotation_target

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums/media_type_enum.dart';

part 'document.freezed.dart';
part 'document.g.dart';

@freezed
class Document with _$Document {
  const Document._();

  const factory Document({
    required int id,
    required String name,
    required String url,
    required DocumentType type,
    int? size,
    @JsonKey(includeFromJson: false, includeToJson: false) File? thumbnailFile,
    @Default(false) bool isLocal,
  }) = _Document;

  factory Document.fromFile(File file, {DocumentType? type}) {
    return Document(
      id: DateTime.now().millisecondsSinceEpoch,
      name: file.path.split('/').last,
      url: file.path,
      type: type ?? (file.path.endsWith('.mp4') ? DocumentType.video : DocumentType.image),
      size: file.lengthSync(),
      isLocal: true,
    );
  }

  factory Document.fromJson(Map<String, dynamic> json) => _$DocumentFromJson(json);

  bool get isMedia => type == DocumentType.image || type == DocumentType.video;
}
