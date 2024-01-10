// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_owner_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyOwnerData _$CompanyOwnerDataFromJson(Map<String, dynamic> json) {
  return _CompanyOwnerData.fromJson(json);
}

/// @nodoc
mixin _$CompanyOwnerData {
  int? get companyID => throw _privateConstructorUsedError;
  int? get companyOwnerContactID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyOwnerDataCopyWith<CompanyOwnerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyOwnerDataCopyWith<$Res> {
  factory $CompanyOwnerDataCopyWith(
          CompanyOwnerData value, $Res Function(CompanyOwnerData) then) =
      _$CompanyOwnerDataCopyWithImpl<$Res, CompanyOwnerData>;
  @useResult
  $Res call({int? companyID, int? companyOwnerContactID});
}

/// @nodoc
class _$CompanyOwnerDataCopyWithImpl<$Res, $Val extends CompanyOwnerData>
    implements $CompanyOwnerDataCopyWith<$Res> {
  _$CompanyOwnerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyID = freezed,
    Object? companyOwnerContactID = freezed,
  }) {
    return _then(_value.copyWith(
      companyID: freezed == companyID
          ? _value.companyID
          : companyID // ignore: cast_nullable_to_non_nullable
              as int?,
      companyOwnerContactID: freezed == companyOwnerContactID
          ? _value.companyOwnerContactID
          : companyOwnerContactID // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyOwnerDataImplCopyWith<$Res>
    implements $CompanyOwnerDataCopyWith<$Res> {
  factory _$$CompanyOwnerDataImplCopyWith(_$CompanyOwnerDataImpl value,
          $Res Function(_$CompanyOwnerDataImpl) then) =
      __$$CompanyOwnerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? companyID, int? companyOwnerContactID});
}

/// @nodoc
class __$$CompanyOwnerDataImplCopyWithImpl<$Res>
    extends _$CompanyOwnerDataCopyWithImpl<$Res, _$CompanyOwnerDataImpl>
    implements _$$CompanyOwnerDataImplCopyWith<$Res> {
  __$$CompanyOwnerDataImplCopyWithImpl(_$CompanyOwnerDataImpl _value,
      $Res Function(_$CompanyOwnerDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyID = freezed,
    Object? companyOwnerContactID = freezed,
  }) {
    return _then(_$CompanyOwnerDataImpl(
      companyID: freezed == companyID
          ? _value.companyID
          : companyID // ignore: cast_nullable_to_non_nullable
              as int?,
      companyOwnerContactID: freezed == companyOwnerContactID
          ? _value.companyOwnerContactID
          : companyOwnerContactID // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyOwnerDataImpl extends _CompanyOwnerData {
  const _$CompanyOwnerDataImpl({this.companyID, this.companyOwnerContactID})
      : super._();

  factory _$CompanyOwnerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyOwnerDataImplFromJson(json);

  @override
  final int? companyID;
  @override
  final int? companyOwnerContactID;

  @override
  String toString() {
    return 'CompanyOwnerData(companyID: $companyID, companyOwnerContactID: $companyOwnerContactID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyOwnerDataImpl &&
            (identical(other.companyID, companyID) ||
                other.companyID == companyID) &&
            (identical(other.companyOwnerContactID, companyOwnerContactID) ||
                other.companyOwnerContactID == companyOwnerContactID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, companyID, companyOwnerContactID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyOwnerDataImplCopyWith<_$CompanyOwnerDataImpl> get copyWith =>
      __$$CompanyOwnerDataImplCopyWithImpl<_$CompanyOwnerDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyOwnerDataImplToJson(
      this,
    );
  }
}

abstract class _CompanyOwnerData extends CompanyOwnerData {
  const factory _CompanyOwnerData(
      {final int? companyID,
      final int? companyOwnerContactID}) = _$CompanyOwnerDataImpl;
  const _CompanyOwnerData._() : super._();

  factory _CompanyOwnerData.fromJson(Map<String, dynamic> json) =
      _$CompanyOwnerDataImpl.fromJson;

  @override
  int? get companyID;
  @override
  int? get companyOwnerContactID;
  @override
  @JsonKey(ignore: true)
  _$$CompanyOwnerDataImplCopyWith<_$CompanyOwnerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
