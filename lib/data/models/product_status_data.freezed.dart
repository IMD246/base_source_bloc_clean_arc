// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_status_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductStatusData _$ProductStatusDataFromJson(Map<String, dynamic> json) {
  return _ProductStatusData.fromJson(json);
}

/// @nodoc
mixin _$ProductStatusData {
  int? get companyProductStatusID => throw _privateConstructorUsedError;
  String? get companyProductStatus => throw _privateConstructorUsedError;
  String? get companyProductStatusDescription =>
      throw _privateConstructorUsedError;
  String? get companyProductStatusObjectives =>
      throw _privateConstructorUsedError;
  int? get productTypeID => throw _privateConstructorUsedError;
  bool? get verified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductStatusDataCopyWith<ProductStatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStatusDataCopyWith<$Res> {
  factory $ProductStatusDataCopyWith(
          ProductStatusData value, $Res Function(ProductStatusData) then) =
      _$ProductStatusDataCopyWithImpl<$Res, ProductStatusData>;
  @useResult
  $Res call(
      {int? companyProductStatusID,
      String? companyProductStatus,
      String? companyProductStatusDescription,
      String? companyProductStatusObjectives,
      int? productTypeID,
      bool? verified});
}

/// @nodoc
class _$ProductStatusDataCopyWithImpl<$Res, $Val extends ProductStatusData>
    implements $ProductStatusDataCopyWith<$Res> {
  _$ProductStatusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyProductStatusID = freezed,
    Object? companyProductStatus = freezed,
    Object? companyProductStatusDescription = freezed,
    Object? companyProductStatusObjectives = freezed,
    Object? productTypeID = freezed,
    Object? verified = freezed,
  }) {
    return _then(_value.copyWith(
      companyProductStatusID: freezed == companyProductStatusID
          ? _value.companyProductStatusID
          : companyProductStatusID // ignore: cast_nullable_to_non_nullable
              as int?,
      companyProductStatus: freezed == companyProductStatus
          ? _value.companyProductStatus
          : companyProductStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      companyProductStatusDescription: freezed ==
              companyProductStatusDescription
          ? _value.companyProductStatusDescription
          : companyProductStatusDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      companyProductStatusObjectives: freezed == companyProductStatusObjectives
          ? _value.companyProductStatusObjectives
          : companyProductStatusObjectives // ignore: cast_nullable_to_non_nullable
              as String?,
      productTypeID: freezed == productTypeID
          ? _value.productTypeID
          : productTypeID // ignore: cast_nullable_to_non_nullable
              as int?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductStatusDataImplCopyWith<$Res>
    implements $ProductStatusDataCopyWith<$Res> {
  factory _$$ProductStatusDataImplCopyWith(_$ProductStatusDataImpl value,
          $Res Function(_$ProductStatusDataImpl) then) =
      __$$ProductStatusDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? companyProductStatusID,
      String? companyProductStatus,
      String? companyProductStatusDescription,
      String? companyProductStatusObjectives,
      int? productTypeID,
      bool? verified});
}

/// @nodoc
class __$$ProductStatusDataImplCopyWithImpl<$Res>
    extends _$ProductStatusDataCopyWithImpl<$Res, _$ProductStatusDataImpl>
    implements _$$ProductStatusDataImplCopyWith<$Res> {
  __$$ProductStatusDataImplCopyWithImpl(_$ProductStatusDataImpl _value,
      $Res Function(_$ProductStatusDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyProductStatusID = freezed,
    Object? companyProductStatus = freezed,
    Object? companyProductStatusDescription = freezed,
    Object? companyProductStatusObjectives = freezed,
    Object? productTypeID = freezed,
    Object? verified = freezed,
  }) {
    return _then(_$ProductStatusDataImpl(
      companyProductStatusID: freezed == companyProductStatusID
          ? _value.companyProductStatusID
          : companyProductStatusID // ignore: cast_nullable_to_non_nullable
              as int?,
      companyProductStatus: freezed == companyProductStatus
          ? _value.companyProductStatus
          : companyProductStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      companyProductStatusDescription: freezed ==
              companyProductStatusDescription
          ? _value.companyProductStatusDescription
          : companyProductStatusDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      companyProductStatusObjectives: freezed == companyProductStatusObjectives
          ? _value.companyProductStatusObjectives
          : companyProductStatusObjectives // ignore: cast_nullable_to_non_nullable
              as String?,
      productTypeID: freezed == productTypeID
          ? _value.productTypeID
          : productTypeID // ignore: cast_nullable_to_non_nullable
              as int?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductStatusDataImpl extends _ProductStatusData {
  const _$ProductStatusDataImpl(
      {this.companyProductStatusID,
      this.companyProductStatus,
      this.companyProductStatusDescription,
      this.companyProductStatusObjectives,
      this.productTypeID,
      this.verified})
      : super._();

  factory _$ProductStatusDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductStatusDataImplFromJson(json);

  @override
  final int? companyProductStatusID;
  @override
  final String? companyProductStatus;
  @override
  final String? companyProductStatusDescription;
  @override
  final String? companyProductStatusObjectives;
  @override
  final int? productTypeID;
  @override
  final bool? verified;

  @override
  String toString() {
    return 'ProductStatusData(companyProductStatusID: $companyProductStatusID, companyProductStatus: $companyProductStatus, companyProductStatusDescription: $companyProductStatusDescription, companyProductStatusObjectives: $companyProductStatusObjectives, productTypeID: $productTypeID, verified: $verified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStatusDataImpl &&
            (identical(other.companyProductStatusID, companyProductStatusID) ||
                other.companyProductStatusID == companyProductStatusID) &&
            (identical(other.companyProductStatus, companyProductStatus) ||
                other.companyProductStatus == companyProductStatus) &&
            (identical(other.companyProductStatusDescription,
                    companyProductStatusDescription) ||
                other.companyProductStatusDescription ==
                    companyProductStatusDescription) &&
            (identical(other.companyProductStatusObjectives,
                    companyProductStatusObjectives) ||
                other.companyProductStatusObjectives ==
                    companyProductStatusObjectives) &&
            (identical(other.productTypeID, productTypeID) ||
                other.productTypeID == productTypeID) &&
            (identical(other.verified, verified) ||
                other.verified == verified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      companyProductStatusID,
      companyProductStatus,
      companyProductStatusDescription,
      companyProductStatusObjectives,
      productTypeID,
      verified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStatusDataImplCopyWith<_$ProductStatusDataImpl> get copyWith =>
      __$$ProductStatusDataImplCopyWithImpl<_$ProductStatusDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductStatusDataImplToJson(
      this,
    );
  }
}

abstract class _ProductStatusData extends ProductStatusData {
  const factory _ProductStatusData(
      {final int? companyProductStatusID,
      final String? companyProductStatus,
      final String? companyProductStatusDescription,
      final String? companyProductStatusObjectives,
      final int? productTypeID,
      final bool? verified}) = _$ProductStatusDataImpl;
  const _ProductStatusData._() : super._();

  factory _ProductStatusData.fromJson(Map<String, dynamic> json) =
      _$ProductStatusDataImpl.fromJson;

  @override
  int? get companyProductStatusID;
  @override
  String? get companyProductStatus;
  @override
  String? get companyProductStatusDescription;
  @override
  String? get companyProductStatusObjectives;
  @override
  int? get productTypeID;
  @override
  bool? get verified;
  @override
  @JsonKey(ignore: true)
  _$$ProductStatusDataImplCopyWith<_$ProductStatusDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
