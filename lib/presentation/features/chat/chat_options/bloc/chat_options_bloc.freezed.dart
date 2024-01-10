// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_options_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatOptionsState {
  bool get hasDeleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatOptionsStateCopyWith<ChatOptionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatOptionsStateCopyWith<$Res> {
  factory $ChatOptionsStateCopyWith(
          ChatOptionsState value, $Res Function(ChatOptionsState) then) =
      _$ChatOptionsStateCopyWithImpl<$Res, ChatOptionsState>;
  @useResult
  $Res call({bool hasDeleted});
}

/// @nodoc
class _$ChatOptionsStateCopyWithImpl<$Res, $Val extends ChatOptionsState>
    implements $ChatOptionsStateCopyWith<$Res> {
  _$ChatOptionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasDeleted = null,
  }) {
    return _then(_value.copyWith(
      hasDeleted: null == hasDeleted
          ? _value.hasDeleted
          : hasDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatOptionsStateImplCopyWith<$Res>
    implements $ChatOptionsStateCopyWith<$Res> {
  factory _$$ChatOptionsStateImplCopyWith(_$ChatOptionsStateImpl value,
          $Res Function(_$ChatOptionsStateImpl) then) =
      __$$ChatOptionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hasDeleted});
}

/// @nodoc
class __$$ChatOptionsStateImplCopyWithImpl<$Res>
    extends _$ChatOptionsStateCopyWithImpl<$Res, _$ChatOptionsStateImpl>
    implements _$$ChatOptionsStateImplCopyWith<$Res> {
  __$$ChatOptionsStateImplCopyWithImpl(_$ChatOptionsStateImpl _value,
      $Res Function(_$ChatOptionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasDeleted = null,
  }) {
    return _then(_$ChatOptionsStateImpl(
      hasDeleted: null == hasDeleted
          ? _value.hasDeleted
          : hasDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChatOptionsStateImpl extends _ChatOptionsState {
  const _$ChatOptionsStateImpl({this.hasDeleted = false}) : super._();

  @override
  @JsonKey()
  final bool hasDeleted;

  @override
  String toString() {
    return 'ChatOptionsState(hasDeleted: $hasDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatOptionsStateImpl &&
            (identical(other.hasDeleted, hasDeleted) ||
                other.hasDeleted == hasDeleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatOptionsStateImplCopyWith<_$ChatOptionsStateImpl> get copyWith =>
      __$$ChatOptionsStateImplCopyWithImpl<_$ChatOptionsStateImpl>(
          this, _$identity);
}

abstract class _ChatOptionsState extends ChatOptionsState {
  const factory _ChatOptionsState({final bool hasDeleted}) =
      _$ChatOptionsStateImpl;
  const _ChatOptionsState._() : super._();

  @override
  bool get hasDeleted;
  @override
  @JsonKey(ignore: true)
  _$$ChatOptionsStateImplCopyWith<_$ChatOptionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
