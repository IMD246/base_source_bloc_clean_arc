// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'industry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Industry _$IndustryFromJson(Map<String, dynamic> json) {
  return _Industry.fromJson(json);
}

/// @nodoc
mixin _$Industry {
  int get industryID => throw _privateConstructorUsedError;
  String get industry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndustryCopyWith<Industry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustryCopyWith<$Res> {
  factory $IndustryCopyWith(Industry value, $Res Function(Industry) then) =
      _$IndustryCopyWithImpl<$Res, Industry>;
  @useResult
  $Res call({int industryID, String industry});
}

/// @nodoc
class _$IndustryCopyWithImpl<$Res, $Val extends Industry>
    implements $IndustryCopyWith<$Res> {
  _$IndustryCopyWithImpl(this._value, this._then);

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
abstract class _$$IndustryImplCopyWith<$Res>
    implements $IndustryCopyWith<$Res> {
  factory _$$IndustryImplCopyWith(
          _$IndustryImpl value, $Res Function(_$IndustryImpl) then) =
      __$$IndustryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int industryID, String industry});
}

/// @nodoc
class __$$IndustryImplCopyWithImpl<$Res>
    extends _$IndustryCopyWithImpl<$Res, _$IndustryImpl>
    implements _$$IndustryImplCopyWith<$Res> {
  __$$IndustryImplCopyWithImpl(
      _$IndustryImpl _value, $Res Function(_$IndustryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? industryID = null,
    Object? industry = null,
  }) {
    return _then(_$IndustryImpl(
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
class _$IndustryImpl implements _Industry {
  const _$IndustryImpl({required this.industryID, required this.industry});

  factory _$IndustryImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndustryImplFromJson(json);

  @override
  final int industryID;
  @override
  final String industry;

  @override
  String toString() {
    return 'Industry(industryID: $industryID, industry: $industry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndustryImpl &&
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
  _$$IndustryImplCopyWith<_$IndustryImpl> get copyWith =>
      __$$IndustryImplCopyWithImpl<_$IndustryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndustryImplToJson(
      this,
    );
  }
}

abstract class _Industry implements Industry {
  const factory _Industry(
      {required final int industryID,
      required final String industry}) = _$IndustryImpl;

  factory _Industry.fromJson(Map<String, dynamic> json) =
      _$IndustryImpl.fromJson;

  @override
  int get industryID;
  @override
  String get industry;
  @override
  @JsonKey(ignore: true)
  _$$IndustryImplCopyWith<_$IndustryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
