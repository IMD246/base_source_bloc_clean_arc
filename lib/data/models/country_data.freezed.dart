// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryData _$CountryDataFromJson(Map<String, dynamic> json) {
  return _CountryData.fromJson(json);
}

/// @nodoc
mixin _$CountryData {
  int get countryID => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDataCopyWith<CountryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDataCopyWith<$Res> {
  factory $CountryDataCopyWith(
          CountryData value, $Res Function(CountryData) then) =
      _$CountryDataCopyWithImpl<$Res, CountryData>;
  @useResult
  $Res call({int countryID, String country});
}

/// @nodoc
class _$CountryDataCopyWithImpl<$Res, $Val extends CountryData>
    implements $CountryDataCopyWith<$Res> {
  _$CountryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryID = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      countryID: null == countryID
          ? _value.countryID
          : countryID // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryDataImplCopyWith<$Res>
    implements $CountryDataCopyWith<$Res> {
  factory _$$CountryDataImplCopyWith(
          _$CountryDataImpl value, $Res Function(_$CountryDataImpl) then) =
      __$$CountryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int countryID, String country});
}

/// @nodoc
class __$$CountryDataImplCopyWithImpl<$Res>
    extends _$CountryDataCopyWithImpl<$Res, _$CountryDataImpl>
    implements _$$CountryDataImplCopyWith<$Res> {
  __$$CountryDataImplCopyWithImpl(
      _$CountryDataImpl _value, $Res Function(_$CountryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryID = null,
    Object? country = null,
  }) {
    return _then(_$CountryDataImpl(
      countryID: null == countryID
          ? _value.countryID
          : countryID // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryDataImpl extends _CountryData {
  const _$CountryDataImpl({required this.countryID, required this.country})
      : super._();

  factory _$CountryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryDataImplFromJson(json);

  @override
  final int countryID;
  @override
  final String country;

  @override
  String toString() {
    return 'CountryData(countryID: $countryID, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryDataImpl &&
            (identical(other.countryID, countryID) ||
                other.countryID == countryID) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countryID, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryDataImplCopyWith<_$CountryDataImpl> get copyWith =>
      __$$CountryDataImplCopyWithImpl<_$CountryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryDataImplToJson(
      this,
    );
  }
}

abstract class _CountryData extends CountryData {
  const factory _CountryData(
      {required final int countryID,
      required final String country}) = _$CountryDataImpl;
  const _CountryData._() : super._();

  factory _CountryData.fromJson(Map<String, dynamic> json) =
      _$CountryDataImpl.fromJson;

  @override
  int get countryID;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$CountryDataImplCopyWith<_$CountryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
