import 'package:freezed_annotation/freezed_annotation.dart';

part 'industry.freezed.dart';
part 'industry.g.dart';

@freezed
class Industry with _$Industry {
  const factory Industry({
    required int industryID,
    required String industry,
  }) = _Industry;

  factory Industry.fromJson(Map<String, dynamic> json) => _$IndustryFromJson(json);
}
