// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joined_channel_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignalChannel _$SignalChannelFromJson(Map<String, dynamic> json) {
  return _SignalChannel.fromJson(json);
}

/// @nodoc
mixin _$SignalChannel {
  String get channelId => throw _privateConstructorUsedError;
  String get connectionId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get contactId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignalChannelCopyWith<SignalChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignalChannelCopyWith<$Res> {
  factory $SignalChannelCopyWith(
          SignalChannel value, $Res Function(SignalChannel) then) =
      _$SignalChannelCopyWithImpl<$Res, SignalChannel>;
  @useResult
  $Res call(
      {String channelId, String connectionId, String userId, String contactId});
}

/// @nodoc
class _$SignalChannelCopyWithImpl<$Res, $Val extends SignalChannel>
    implements $SignalChannelCopyWith<$Res> {
  _$SignalChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? connectionId = null,
    Object? userId = null,
    Object? contactId = null,
  }) {
    return _then(_value.copyWith(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      connectionId: null == connectionId
          ? _value.connectionId
          : connectionId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignalChannelImplCopyWith<$Res>
    implements $SignalChannelCopyWith<$Res> {
  factory _$$SignalChannelImplCopyWith(
          _$SignalChannelImpl value, $Res Function(_$SignalChannelImpl) then) =
      __$$SignalChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String channelId, String connectionId, String userId, String contactId});
}

/// @nodoc
class __$$SignalChannelImplCopyWithImpl<$Res>
    extends _$SignalChannelCopyWithImpl<$Res, _$SignalChannelImpl>
    implements _$$SignalChannelImplCopyWith<$Res> {
  __$$SignalChannelImplCopyWithImpl(
      _$SignalChannelImpl _value, $Res Function(_$SignalChannelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? connectionId = null,
    Object? userId = null,
    Object? contactId = null,
  }) {
    return _then(_$SignalChannelImpl(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      connectionId: null == connectionId
          ? _value.connectionId
          : connectionId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignalChannelImpl implements _SignalChannel {
  const _$SignalChannelImpl(
      {required this.channelId,
      required this.connectionId,
      required this.userId,
      required this.contactId});

  factory _$SignalChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignalChannelImplFromJson(json);

  @override
  final String channelId;
  @override
  final String connectionId;
  @override
  final String userId;
  @override
  final String contactId;

  @override
  String toString() {
    return 'SignalChannel(channelId: $channelId, connectionId: $connectionId, userId: $userId, contactId: $contactId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignalChannelImpl &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.connectionId, connectionId) ||
                other.connectionId == connectionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, channelId, connectionId, userId, contactId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignalChannelImplCopyWith<_$SignalChannelImpl> get copyWith =>
      __$$SignalChannelImplCopyWithImpl<_$SignalChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignalChannelImplToJson(
      this,
    );
  }
}

abstract class _SignalChannel implements SignalChannel {
  const factory _SignalChannel(
      {required final String channelId,
      required final String connectionId,
      required final String userId,
      required final String contactId}) = _$SignalChannelImpl;

  factory _SignalChannel.fromJson(Map<String, dynamic> json) =
      _$SignalChannelImpl.fromJson;

  @override
  String get channelId;
  @override
  String get connectionId;
  @override
  String get userId;
  @override
  String get contactId;
  @override
  @JsonKey(ignore: true)
  _$$SignalChannelImplCopyWith<_$SignalChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
