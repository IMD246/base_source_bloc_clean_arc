// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      url: json['url'] as String,
      type: $enumDecode(_$DocumentTypeEnumMap, json['type']),
      size: json['size'] as int?,
      isLocal: json['isLocal'] as bool? ?? false,
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'type': _$DocumentTypeEnumMap[instance.type]!,
      'size': instance.size,
      'isLocal': instance.isLocal,
    };

const _$DocumentTypeEnumMap = {
  DocumentType.image: 'image',
  DocumentType.video: 'video',
  DocumentType.other: 'other',
};
