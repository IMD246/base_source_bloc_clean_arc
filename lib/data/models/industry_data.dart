import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';
import 'base/entity_mappable.dart';

part 'industry_data.freezed.dart';
part 'industry_data.g.dart';

@freezed
class IndustryData with _$IndustryData, EntityMappable<Industry> {
  const IndustryData._();
  const factory IndustryData({
    required int industryID,
    required String industry,
  }) = _IndustryData;

  factory IndustryData.fromJson(Map<String, dynamic> json) => _$IndustryDataFromJson(json);

  @override
  Industry toEntity() {
    return Industry(industryID: industryID, industry: industry);
  }
}
