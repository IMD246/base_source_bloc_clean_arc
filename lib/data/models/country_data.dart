import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';
import 'base/entity_mappable.dart';

part 'country_data.freezed.dart';
part 'country_data.g.dart';

@freezed
class CountryData with _$CountryData, EntityMappable<Country> {
  const CountryData._();
  const factory CountryData({
    required int countryID,
    required String country,
  }) = _CountryData;

  factory CountryData.fromJson(Map<String, dynamic> json) => _$CountryDataFromJson(json);

  @override
  Country toEntity() {
    return Country(countryID: countryID, country: country);
  }
}
