import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';
import 'base/entity_mappable.dart';

part 'city_data.freezed.dart';
part 'city_data.g.dart';

@freezed
class CityData with _$CityData, EntityMappable<City> {
  const CityData._();
  const factory CityData({
    required int cityID,
    required String city,
  }) = _CityData;

  factory CityData.fromJson(Map<String, dynamic> json) => _$CityDataFromJson(json);

  @override
  City toEntity() {
    return City(cityID: cityID, city: city);
  }
}
