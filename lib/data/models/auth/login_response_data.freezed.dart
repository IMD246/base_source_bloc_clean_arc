// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseData _$LoginResponseDataFromJson(Map<String, dynamic> json) {
  return _LoginResponseData.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseData {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'expire')
  @ExpiresInConverter()
  int get expiresIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseDataCopyWith<LoginResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseDataCopyWith<$Res> {
  factory $LoginResponseDataCopyWith(
          LoginResponseData value, $Res Function(LoginResponseData) then) =
      _$LoginResponseDataCopyWithImpl<$Res, LoginResponseData>;
  @useResult
  $Res call(
      {String token,
      @JsonKey(name: 'expire') @ExpiresInConverter() int expiresIn});
}

/// @nodoc
class _$LoginResponseDataCopyWithImpl<$Res, $Val extends LoginResponseData>
    implements $LoginResponseDataCopyWith<$Res> {
  _$LoginResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? expiresIn = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResponseDataImplCopyWith<$Res>
    implements $LoginResponseDataCopyWith<$Res> {
  factory _$$LoginResponseDataImplCopyWith(_$LoginResponseDataImpl value,
          $Res Function(_$LoginResponseDataImpl) then) =
      __$$LoginResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      @JsonKey(name: 'expire') @ExpiresInConverter() int expiresIn});
}

/// @nodoc
class __$$LoginResponseDataImplCopyWithImpl<$Res>
    extends _$LoginResponseDataCopyWithImpl<$Res, _$LoginResponseDataImpl>
    implements _$$LoginResponseDataImplCopyWith<$Res> {
  __$$LoginResponseDataImplCopyWithImpl(_$LoginResponseDataImpl _value,
      $Res Function(_$LoginResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? expiresIn = null,
  }) {
    return _then(_$LoginResponseDataImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseDataImpl implements _LoginResponseData {
  const _$LoginResponseDataImpl(
      {required this.token,
      @JsonKey(name: 'expire') @ExpiresInConverter() required this.expiresIn});

  factory _$LoginResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseDataImplFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: 'expire')
  @ExpiresInConverter()
  final int expiresIn;

  @override
  String toString() {
    return 'LoginResponseData(token: $token, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseDataImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, expiresIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseDataImplCopyWith<_$LoginResponseDataImpl> get copyWith =>
      __$$LoginResponseDataImplCopyWithImpl<_$LoginResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseDataImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseData implements LoginResponseData {
  const factory _LoginResponseData(
      {required final String token,
      @JsonKey(name: 'expire')
      @ExpiresInConverter()
      required final int expiresIn}) = _$LoginResponseDataImpl;

  factory _LoginResponseData.fromJson(Map<String, dynamic> json) =
      _$LoginResponseDataImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: 'expire')
  @ExpiresInConverter()
  int get expiresIn;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseDataImplCopyWith<_$LoginResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
