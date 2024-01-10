// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'typing_indicator_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TypingIndicatorData _$TypingIndicatorDataFromJson(Map<String, dynamic> json) {
  return _TypingIndicatorData.fromJson(json);
}

/// @nodoc
mixin _$TypingIndicatorData {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  bool get typing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypingIndicatorDataCopyWith<TypingIndicatorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypingIndicatorDataCopyWith<$Res> {
  factory $TypingIndicatorDataCopyWith(
          TypingIndicatorData value, $Res Function(TypingIndicatorData) then) =
      _$TypingIndicatorDataCopyWithImpl<$Res, TypingIndicatorData>;
  @useResult
  $Res call({int id, String fullName, bool typing});
}

/// @nodoc
class _$TypingIndicatorDataCopyWithImpl<$Res, $Val extends TypingIndicatorData>
    implements $TypingIndicatorDataCopyWith<$Res> {
  _$TypingIndicatorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? typing = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      typing: null == typing
          ? _value.typing
          : typing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypingIndicatorDataImplCopyWith<$Res>
    implements $TypingIndicatorDataCopyWith<$Res> {
  factory _$$TypingIndicatorDataImplCopyWith(_$TypingIndicatorDataImpl value,
          $Res Function(_$TypingIndicatorDataImpl) then) =
      __$$TypingIndicatorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String fullName, bool typing});
}

/// @nodoc
class __$$TypingIndicatorDataImplCopyWithImpl<$Res>
    extends _$TypingIndicatorDataCopyWithImpl<$Res, _$TypingIndicatorDataImpl>
    implements _$$TypingIndicatorDataImplCopyWith<$Res> {
  __$$TypingIndicatorDataImplCopyWithImpl(_$TypingIndicatorDataImpl _value,
      $Res Function(_$TypingIndicatorDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? typing = null,
  }) {
    return _then(_$TypingIndicatorDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      typing: null == typing
          ? _value.typing
          : typing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypingIndicatorDataImpl extends _TypingIndicatorData {
  const _$TypingIndicatorDataImpl(
      {required this.id, required this.fullName, required this.typing})
      : super._();

  factory _$TypingIndicatorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypingIndicatorDataImplFromJson(json);

  @override
  final int id;
  @override
  final String fullName;
  @override
  final bool typing;

  @override
  String toString() {
    return 'TypingIndicatorData(id: $id, fullName: $fullName, typing: $typing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypingIndicatorDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.typing, typing) || other.typing == typing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, typing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypingIndicatorDataImplCopyWith<_$TypingIndicatorDataImpl> get copyWith =>
      __$$TypingIndicatorDataImplCopyWithImpl<_$TypingIndicatorDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypingIndicatorDataImplToJson(
      this,
    );
  }
}

abstract class _TypingIndicatorData extends TypingIndicatorData {
  const factory _TypingIndicatorData(
      {required final int id,
      required final String fullName,
      required final bool typing}) = _$TypingIndicatorDataImpl;
  const _TypingIndicatorData._() : super._();

  factory _TypingIndicatorData.fromJson(Map<String, dynamic> json) =
      _$TypingIndicatorDataImpl.fromJson;

  @override
  int get id;
  @override
  String get fullName;
  @override
  bool get typing;
  @override
  @JsonKey(ignore: true)
  _$$TypingIndicatorDataImplCopyWith<_$TypingIndicatorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
