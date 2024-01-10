// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'industry_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IndustryData _$IndustryDataFromJson(Map<String, dynamic> json) {
  return _IndustryData.fromJson(json);
}

/// @nodoc
mixin _$IndustryData {
  int get industryID => throw _privateConstructorUsedError;
  String get industry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndustryDataCopyWith<IndustryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustryDataCopyWith<$Res> {
  factory $IndustryDataCopyWith(
          IndustryData value, $Res Function(IndustryData) then) =
      _$IndustryDataCopyWithImpl<$Res, IndustryData>;
  @useResult
  $Res call({int industryID, String industry});
}

/// @nodoc
class _$IndustryDataCopyWithImpl<$Res, $Val extends IndustryData>
    implements $IndustryDataCopyWith<$Res> {
  _$IndustryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? industryID = null,
    Object? industry = null,
  }) {
    return _then(_value.copyWith(
      industryID: null == industryID
          ? _value.industryID
          : industryID // ignore: cast_nullable_to_non_nullable
              as int,
      industry: null == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndustryDataImplCopyWith<$Res>
    implements $IndustryDataCopyWith<$Res> {
  factory _$$IndustryDataImplCopyWith(
          _$IndustryDataImpl value, $Res Function(_$IndustryDataImpl) then) =
      __$$IndustryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int industryID, String industry});
}

/// @nodoc
class __$$IndustryDataImplCopyWithImpl<$Res>
    extends _$IndustryDataCopyWithImpl<$Res, _$IndustryDataImpl>
    implements _$$IndustryDataImplCopyWith<$Res> {
  __$$IndustryDataImplCopyWithImpl(
      _$IndustryDataImpl _value, $Res Function(_$IndustryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? industryID = null,
    Object? industry = null,
  }) {
    return _then(_$IndustryDataImpl(
      industryID: null == industryID
          ? _value.industryID
          : industryID // ignore: cast_nullable_to_non_nullable
              as int,
      industry: null == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndustryDataImpl extends _IndustryData {
  const _$IndustryDataImpl({required this.industryID, required this.industry})
      : super._();

  factory _$IndustryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndustryDataImplFromJson(json);

  @override
  final int industryID;
  @override
  final String industry;

  @override
  String toString() {
    return 'IndustryData(industryID: $industryID, industry: $industry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndustryDataImpl &&
            (identical(other.industryID, industryID) ||
                other.industryID == industryID) &&
            (identical(other.industry, industry) ||
                other.industry == industry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, industryID, industry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndustryDataImplCopyWith<_$IndustryDataImpl> get copyWith =>
      __$$IndustryDataImplCopyWithImpl<_$IndustryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndustryDataImplToJson(
      this,
    );
  }
}

abstract class _IndustryData extends IndustryData {
  const factory _IndustryData(
      {required final int industryID,
      required final String industry}) = _$IndustryDataImpl;
  const _IndustryData._() : super._();

  factory _IndustryData.fromJson(Map<String, dynamic> json) =
      _$IndustryDataImpl.fromJson;

  @override
  int get industryID;
  @override
  String get industry;
  @override
  @JsonKey(ignore: true)
  _$$IndustryDataImplCopyWith<_$IndustryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
