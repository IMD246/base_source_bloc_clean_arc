// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyOwner _$CompanyOwnerFromJson(Map<String, dynamic> json) {
  return _CompanyOwner.fromJson(json);
}

/// @nodoc
mixin _$CompanyOwner {
  int? get companyID => throw _privateConstructorUsedError;
  int? get companyOwnerContactID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyOwnerCopyWith<CompanyOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyOwnerCopyWith<$Res> {
  factory $CompanyOwnerCopyWith(
          CompanyOwner value, $Res Function(CompanyOwner) then) =
      _$CompanyOwnerCopyWithImpl<$Res, CompanyOwner>;
  @useResult
  $Res call({int? companyID, int? companyOwnerContactID});
}

/// @nodoc
class _$CompanyOwnerCopyWithImpl<$Res, $Val extends CompanyOwner>
    implements $CompanyOwnerCopyWith<$Res> {
  _$CompanyOwnerCopyWithImpl(this._value, this._then);

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
abstract class _$$CompanyOwnerImplCopyWith<$Res>
    implements $CompanyOwnerCopyWith<$Res> {
  factory _$$CompanyOwnerImplCopyWith(
          _$CompanyOwnerImpl value, $Res Function(_$CompanyOwnerImpl) then) =
      __$$CompanyOwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? companyID, int? companyOwnerContactID});
}

/// @nodoc
class __$$CompanyOwnerImplCopyWithImpl<$Res>
    extends _$CompanyOwnerCopyWithImpl<$Res, _$CompanyOwnerImpl>
    implements _$$CompanyOwnerImplCopyWith<$Res> {
  __$$CompanyOwnerImplCopyWithImpl(
      _$CompanyOwnerImpl _value, $Res Function(_$CompanyOwnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyID = freezed,
    Object? companyOwnerContactID = freezed,
  }) {
    return _then(_$CompanyOwnerImpl(
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
class _$CompanyOwnerImpl extends _CompanyOwner {
  const _$CompanyOwnerImpl({this.companyID, this.companyOwnerContactID})
      : super._();

  factory _$CompanyOwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyOwnerImplFromJson(json);

  @override
  final int? companyID;
  @override
  final int? companyOwnerContactID;

  @override
  String toString() {
    return 'CompanyOwner(companyID: $companyID, companyOwnerContactID: $companyOwnerContactID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyOwnerImpl &&
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
  _$$CompanyOwnerImplCopyWith<_$CompanyOwnerImpl> get copyWith =>
      __$$CompanyOwnerImplCopyWithImpl<_$CompanyOwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyOwnerImplToJson(
      this,
    );
  }
}

abstract class _CompanyOwner extends CompanyOwner {
  const factory _CompanyOwner(
      {final int? companyID,
      final int? companyOwnerContactID}) = _$CompanyOwnerImpl;
  const _CompanyOwner._() : super._();

  factory _CompanyOwner.fromJson(Map<String, dynamic> json) =
      _$CompanyOwnerImpl.fromJson;

  @override
  int? get companyID;
  @override
  int? get companyOwnerContactID;
  @override
  @JsonKey(ignore: true)
  _$$CompanyOwnerImplCopyWith<_$CompanyOwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
