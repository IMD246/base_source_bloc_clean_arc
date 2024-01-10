// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatDetailInitiated {}

/// @nodoc
abstract class $ChatDetailInitiatedCopyWith<$Res> {
  factory $ChatDetailInitiatedCopyWith(
          ChatDetailInitiated value, $Res Function(ChatDetailInitiated) then) =
      _$ChatDetailInitiatedCopyWithImpl<$Res, ChatDetailInitiated>;
}

/// @nodoc
class _$ChatDetailInitiatedCopyWithImpl<$Res, $Val extends ChatDetailInitiated>
    implements $ChatDetailInitiatedCopyWith<$Res> {
  _$ChatDetailInitiatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatDetailInitiatedImplCopyWith<$Res> {
  factory _$$ChatDetailInitiatedImplCopyWith(_$ChatDetailInitiatedImpl value,
          $Res Function(_$ChatDetailInitiatedImpl) then) =
      __$$ChatDetailInitiatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatDetailInitiatedImplCopyWithImpl<$Res>
    extends _$ChatDetailInitiatedCopyWithImpl<$Res, _$ChatDetailInitiatedImpl>
    implements _$$ChatDetailInitiatedImplCopyWith<$Res> {
  __$$ChatDetailInitiatedImplCopyWithImpl(_$ChatDetailInitiatedImpl _value,
      $Res Function(_$ChatDetailInitiatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatDetailInitiatedImpl implements _ChatDetailInitiated {
  const _$ChatDetailInitiatedImpl();

  @override
  String toString() {
    return 'ChatDetailInitiated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDetailInitiatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ChatDetailInitiated implements ChatDetailInitiated {
  const factory _ChatDetailInitiated() = _$ChatDetailInitiatedImpl;
}

/// @nodoc
mixin _$GetMessages {
  bool get isRefresh => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetMessagesCopyWith<GetMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMessagesCopyWith<$Res> {
  factory $GetMessagesCopyWith(
          GetMessages value, $Res Function(GetMessages) then) =
      _$GetMessagesCopyWithImpl<$Res, GetMessages>;
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class _$GetMessagesCopyWithImpl<$Res, $Val extends GetMessages>
    implements $GetMessagesCopyWith<$Res> {
  _$GetMessagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = null,
  }) {
    return _then(_value.copyWith(
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMessagesImplCopyWith<$Res>
    implements $GetMessagesCopyWith<$Res> {
  factory _$$GetMessagesImplCopyWith(
          _$GetMessagesImpl value, $Res Function(_$GetMessagesImpl) then) =
      __$$GetMessagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$GetMessagesImplCopyWithImpl<$Res>
    extends _$GetMessagesCopyWithImpl<$Res, _$GetMessagesImpl>
    implements _$$GetMessagesImplCopyWith<$Res> {
  __$$GetMessagesImplCopyWithImpl(
      _$GetMessagesImpl _value, $Res Function(_$GetMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = null,
  }) {
    return _then(_$GetMessagesImpl(
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetMessagesImpl implements _GetMessages {
  const _$GetMessagesImpl({required this.isRefresh});

  @override
  final bool isRefresh;

  @override
  String toString() {
    return 'GetMessages(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesImpl &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      __$$GetMessagesImplCopyWithImpl<_$GetMessagesImpl>(this, _$identity);
}

abstract class _GetMessages implements GetMessages {
  const factory _GetMessages({required final bool isRefresh}) =
      _$GetMessagesImpl;

  @override
  bool get isRefresh;
  @override
  @JsonKey(ignore: true)
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoadMoreMessages {}

/// @nodoc
abstract class $LoadMoreMessagesCopyWith<$Res> {
  factory $LoadMoreMessagesCopyWith(
          LoadMoreMessages value, $Res Function(LoadMoreMessages) then) =
      _$LoadMoreMessagesCopyWithImpl<$Res, LoadMoreMessages>;
}

/// @nodoc
class _$LoadMoreMessagesCopyWithImpl<$Res, $Val extends LoadMoreMessages>
    implements $LoadMoreMessagesCopyWith<$Res> {
  _$LoadMoreMessagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadMoreMessagesImplCopyWith<$Res> {
  factory _$$LoadMoreMessagesImplCopyWith(_$LoadMoreMessagesImpl value,
          $Res Function(_$LoadMoreMessagesImpl) then) =
      __$$LoadMoreMessagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreMessagesImplCopyWithImpl<$Res>
    extends _$LoadMoreMessagesCopyWithImpl<$Res, _$LoadMoreMessagesImpl>
    implements _$$LoadMoreMessagesImplCopyWith<$Res> {
  __$$LoadMoreMessagesImplCopyWithImpl(_$LoadMoreMessagesImpl _value,
      $Res Function(_$LoadMoreMessagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreMessagesImpl implements _LoadMoreMessages {
  const _$LoadMoreMessagesImpl();

  @override
  String toString() {
    return 'LoadMoreMessages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreMessagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LoadMoreMessages implements LoadMoreMessages {
  const factory _LoadMoreMessages() = _$LoadMoreMessagesImpl;
}

/// @nodoc
mixin _$SendMessage {
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendMessageCopyWith<SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageCopyWith<$Res> {
  factory $SendMessageCopyWith(
          SendMessage value, $Res Function(SendMessage) then) =
      _$SendMessageCopyWithImpl<$Res, SendMessage>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class _$SendMessageCopyWithImpl<$Res, $Val extends SendMessage>
    implements $SendMessageCopyWith<$Res> {
  _$SendMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res>
    implements $SendMessageCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$SendMessageCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$SendMessageImpl(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(this.content);

  @override
  final String content;

  @override
  String toString() {
    return 'SendMessage(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);
}

abstract class _SendMessage implements SendMessage {
  const factory _SendMessage(final String content) = _$SendMessageImpl;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteMessage {
  Message get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteMessageCopyWith<DeleteMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteMessageCopyWith<$Res> {
  factory $DeleteMessageCopyWith(
          DeleteMessage value, $Res Function(DeleteMessage) then) =
      _$DeleteMessageCopyWithImpl<$Res, DeleteMessage>;
  @useResult
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$DeleteMessageCopyWithImpl<$Res, $Val extends DeleteMessage>
    implements $DeleteMessageCopyWith<$Res> {
  _$DeleteMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeleteMessageImplCopyWith<$Res>
    implements $DeleteMessageCopyWith<$Res> {
  factory _$$DeleteMessageImplCopyWith(
          _$DeleteMessageImpl value, $Res Function(_$DeleteMessageImpl) then) =
      __$$DeleteMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$DeleteMessageImplCopyWithImpl<$Res>
    extends _$DeleteMessageCopyWithImpl<$Res, _$DeleteMessageImpl>
    implements _$$DeleteMessageImplCopyWith<$Res> {
  __$$DeleteMessageImplCopyWithImpl(
      _$DeleteMessageImpl _value, $Res Function(_$DeleteMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$DeleteMessageImpl implements _DeleteMessage {
  const _$DeleteMessageImpl(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'DeleteMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      __$$DeleteMessageImplCopyWithImpl<_$DeleteMessageImpl>(this, _$identity);
}

abstract class _DeleteMessage implements DeleteMessage {
  const factory _DeleteMessage(final Message message) = _$DeleteMessageImpl;

  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActiveEditingMessage {
  Message? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActiveEditingMessageCopyWith<ActiveEditingMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveEditingMessageCopyWith<$Res> {
  factory $ActiveEditingMessageCopyWith(ActiveEditingMessage value,
          $Res Function(ActiveEditingMessage) then) =
      _$ActiveEditingMessageCopyWithImpl<$Res, ActiveEditingMessage>;
  @useResult
  $Res call({Message? message});

  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class _$ActiveEditingMessageCopyWithImpl<$Res,
        $Val extends ActiveEditingMessage>
    implements $ActiveEditingMessageCopyWith<$Res> {
  _$ActiveEditingMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActiveEditingMessageImplCopyWith<$Res>
    implements $ActiveEditingMessageCopyWith<$Res> {
  factory _$$ActiveEditingMessageImplCopyWith(_$ActiveEditingMessageImpl value,
          $Res Function(_$ActiveEditingMessageImpl) then) =
      __$$ActiveEditingMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Message? message});

  @override
  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$$ActiveEditingMessageImplCopyWithImpl<$Res>
    extends _$ActiveEditingMessageCopyWithImpl<$Res, _$ActiveEditingMessageImpl>
    implements _$$ActiveEditingMessageImplCopyWith<$Res> {
  __$$ActiveEditingMessageImplCopyWithImpl(_$ActiveEditingMessageImpl _value,
      $Res Function(_$ActiveEditingMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ActiveEditingMessageImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
    ));
  }
}

/// @nodoc

class _$ActiveEditingMessageImpl implements _ActiveEditingMessage {
  const _$ActiveEditingMessageImpl(this.message);

  @override
  final Message? message;

  @override
  String toString() {
    return 'ActiveEditingMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveEditingMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveEditingMessageImplCopyWith<_$ActiveEditingMessageImpl>
      get copyWith =>
          __$$ActiveEditingMessageImplCopyWithImpl<_$ActiveEditingMessageImpl>(
              this, _$identity);
}

abstract class _ActiveEditingMessage implements ActiveEditingMessage {
  const factory _ActiveEditingMessage(final Message? message) =
      _$ActiveEditingMessageImpl;

  @override
  Message? get message;
  @override
  @JsonKey(ignore: true)
  _$$ActiveEditingMessageImplCopyWith<_$ActiveEditingMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateMessage {
  Message get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateMessageCopyWith<UpdateMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMessageCopyWith<$Res> {
  factory $UpdateMessageCopyWith(
          UpdateMessage value, $Res Function(UpdateMessage) then) =
      _$UpdateMessageCopyWithImpl<$Res, UpdateMessage>;
  @useResult
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$UpdateMessageCopyWithImpl<$Res, $Val extends UpdateMessage>
    implements $UpdateMessageCopyWith<$Res> {
  _$UpdateMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateMessageImplCopyWith<$Res>
    implements $UpdateMessageCopyWith<$Res> {
  factory _$$UpdateMessageImplCopyWith(
          _$UpdateMessageImpl value, $Res Function(_$UpdateMessageImpl) then) =
      __$$UpdateMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$UpdateMessageImplCopyWithImpl<$Res>
    extends _$UpdateMessageCopyWithImpl<$Res, _$UpdateMessageImpl>
    implements _$$UpdateMessageImplCopyWith<$Res> {
  __$$UpdateMessageImplCopyWithImpl(
      _$UpdateMessageImpl _value, $Res Function(_$UpdateMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UpdateMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$UpdateMessageImpl implements _UpdateMessage {
  const _$UpdateMessageImpl(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'UpdateMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMessageImplCopyWith<_$UpdateMessageImpl> get copyWith =>
      __$$UpdateMessageImplCopyWithImpl<_$UpdateMessageImpl>(this, _$identity);
}

abstract class _UpdateMessage implements UpdateMessage {
  const factory _UpdateMessage(final Message message) = _$UpdateMessageImpl;

  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  _$$UpdateMessageImplCopyWith<_$UpdateMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActiveToReplyMessage {
  Message? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActiveToReplyMessageCopyWith<ActiveToReplyMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveToReplyMessageCopyWith<$Res> {
  factory $ActiveToReplyMessageCopyWith(ActiveToReplyMessage value,
          $Res Function(ActiveToReplyMessage) then) =
      _$ActiveToReplyMessageCopyWithImpl<$Res, ActiveToReplyMessage>;
  @useResult
  $Res call({Message? message});

  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class _$ActiveToReplyMessageCopyWithImpl<$Res,
        $Val extends ActiveToReplyMessage>
    implements $ActiveToReplyMessageCopyWith<$Res> {
  _$ActiveToReplyMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActiveToReplyMessageImplCopyWith<$Res>
    implements $ActiveToReplyMessageCopyWith<$Res> {
  factory _$$ActiveToReplyMessageImplCopyWith(_$ActiveToReplyMessageImpl value,
          $Res Function(_$ActiveToReplyMessageImpl) then) =
      __$$ActiveToReplyMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Message? message});

  @override
  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$$ActiveToReplyMessageImplCopyWithImpl<$Res>
    extends _$ActiveToReplyMessageCopyWithImpl<$Res, _$ActiveToReplyMessageImpl>
    implements _$$ActiveToReplyMessageImplCopyWith<$Res> {
  __$$ActiveToReplyMessageImplCopyWithImpl(_$ActiveToReplyMessageImpl _value,
      $Res Function(_$ActiveToReplyMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ActiveToReplyMessageImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
    ));
  }
}

/// @nodoc

class _$ActiveToReplyMessageImpl implements _ActiveToReplyMessage {
  const _$ActiveToReplyMessageImpl(this.message);

  @override
  final Message? message;

  @override
  String toString() {
    return 'ActiveToReplyMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveToReplyMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveToReplyMessageImplCopyWith<_$ActiveToReplyMessageImpl>
      get copyWith =>
          __$$ActiveToReplyMessageImplCopyWithImpl<_$ActiveToReplyMessageImpl>(
              this, _$identity);
}

abstract class _ActiveToReplyMessage implements ActiveToReplyMessage {
  const factory _ActiveToReplyMessage(final Message? message) =
      _$ActiveToReplyMessageImpl;

  @override
  Message? get message;
  @override
  @JsonKey(ignore: true)
  _$$ActiveToReplyMessageImplCopyWith<_$ActiveToReplyMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReactMessage {
  Message get message => throw _privateConstructorUsedError;
  ReactionType get reactionType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReactMessageCopyWith<ReactMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactMessageCopyWith<$Res> {
  factory $ReactMessageCopyWith(
          ReactMessage value, $Res Function(ReactMessage) then) =
      _$ReactMessageCopyWithImpl<$Res, ReactMessage>;
  @useResult
  $Res call({Message message, ReactionType reactionType});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ReactMessageCopyWithImpl<$Res, $Val extends ReactMessage>
    implements $ReactMessageCopyWith<$Res> {
  _$ReactMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? reactionType = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      reactionType: null == reactionType
          ? _value.reactionType
          : reactionType // ignore: cast_nullable_to_non_nullable
              as ReactionType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReactMessageImplCopyWith<$Res>
    implements $ReactMessageCopyWith<$Res> {
  factory _$$ReactMessageImplCopyWith(
          _$ReactMessageImpl value, $Res Function(_$ReactMessageImpl) then) =
      __$$ReactMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Message message, ReactionType reactionType});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$ReactMessageImplCopyWithImpl<$Res>
    extends _$ReactMessageCopyWithImpl<$Res, _$ReactMessageImpl>
    implements _$$ReactMessageImplCopyWith<$Res> {
  __$$ReactMessageImplCopyWithImpl(
      _$ReactMessageImpl _value, $Res Function(_$ReactMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? reactionType = null,
  }) {
    return _then(_$ReactMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      null == reactionType
          ? _value.reactionType
          : reactionType // ignore: cast_nullable_to_non_nullable
              as ReactionType,
    ));
  }
}

/// @nodoc

class _$ReactMessageImpl implements _ReactMessage {
  const _$ReactMessageImpl(this.message, this.reactionType);

  @override
  final Message message;
  @override
  final ReactionType reactionType;

  @override
  String toString() {
    return 'ReactMessage(message: $message, reactionType: $reactionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReactMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.reactionType, reactionType) ||
                other.reactionType == reactionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, reactionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactMessageImplCopyWith<_$ReactMessageImpl> get copyWith =>
      __$$ReactMessageImplCopyWithImpl<_$ReactMessageImpl>(this, _$identity);
}

abstract class _ReactMessage implements ReactMessage {
  const factory _ReactMessage(
          final Message message, final ReactionType reactionType) =
      _$ReactMessageImpl;

  @override
  Message get message;
  @override
  ReactionType get reactionType;
  @override
  @JsonKey(ignore: true)
  _$$ReactMessageImplCopyWith<_$ReactMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoveReaction {
  Message get message => throw _privateConstructorUsedError;
  Reaction get reaction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoveReactionCopyWith<RemoveReaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveReactionCopyWith<$Res> {
  factory $RemoveReactionCopyWith(
          RemoveReaction value, $Res Function(RemoveReaction) then) =
      _$RemoveReactionCopyWithImpl<$Res, RemoveReaction>;
  @useResult
  $Res call({Message message, Reaction reaction});

  $MessageCopyWith<$Res> get message;
  $ReactionCopyWith<$Res> get reaction;
}

/// @nodoc
class _$RemoveReactionCopyWithImpl<$Res, $Val extends RemoveReaction>
    implements $RemoveReactionCopyWith<$Res> {
  _$RemoveReactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? reaction = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      reaction: null == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as Reaction,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReactionCopyWith<$Res> get reaction {
    return $ReactionCopyWith<$Res>(_value.reaction, (value) {
      return _then(_value.copyWith(reaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemoveReactionImplCopyWith<$Res>
    implements $RemoveReactionCopyWith<$Res> {
  factory _$$RemoveReactionImplCopyWith(_$RemoveReactionImpl value,
          $Res Function(_$RemoveReactionImpl) then) =
      __$$RemoveReactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Message message, Reaction reaction});

  @override
  $MessageCopyWith<$Res> get message;
  @override
  $ReactionCopyWith<$Res> get reaction;
}

/// @nodoc
class __$$RemoveReactionImplCopyWithImpl<$Res>
    extends _$RemoveReactionCopyWithImpl<$Res, _$RemoveReactionImpl>
    implements _$$RemoveReactionImplCopyWith<$Res> {
  __$$RemoveReactionImplCopyWithImpl(
      _$RemoveReactionImpl _value, $Res Function(_$RemoveReactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? reaction = null,
  }) {
    return _then(_$RemoveReactionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      null == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as Reaction,
    ));
  }
}

/// @nodoc

class _$RemoveReactionImpl implements _RemoveReaction {
  const _$RemoveReactionImpl(this.message, this.reaction);

  @override
  final Message message;
  @override
  final Reaction reaction;

  @override
  String toString() {
    return 'RemoveReaction(message: $message, reaction: $reaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveReactionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.reaction, reaction) ||
                other.reaction == reaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, reaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveReactionImplCopyWith<_$RemoveReactionImpl> get copyWith =>
      __$$RemoveReactionImplCopyWithImpl<_$RemoveReactionImpl>(
          this, _$identity);
}

abstract class _RemoveReaction implements RemoveReaction {
  const factory _RemoveReaction(
      final Message message, final Reaction reaction) = _$RemoveReactionImpl;

  @override
  Message get message;
  @override
  Reaction get reaction;
  @override
  @JsonKey(ignore: true)
  _$$RemoveReactionImplCopyWith<_$RemoveReactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttachDocuments {
  List<File> get files => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttachDocumentsCopyWith<AttachDocuments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachDocumentsCopyWith<$Res> {
  factory $AttachDocumentsCopyWith(
          AttachDocuments value, $Res Function(AttachDocuments) then) =
      _$AttachDocumentsCopyWithImpl<$Res, AttachDocuments>;
  @useResult
  $Res call({List<File> files});
}

/// @nodoc
class _$AttachDocumentsCopyWithImpl<$Res, $Val extends AttachDocuments>
    implements $AttachDocumentsCopyWith<$Res> {
  _$AttachDocumentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_value.copyWith(
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachDocumentsImplCopyWith<$Res>
    implements $AttachDocumentsCopyWith<$Res> {
  factory _$$AttachDocumentsImplCopyWith(_$AttachDocumentsImpl value,
          $Res Function(_$AttachDocumentsImpl) then) =
      __$$AttachDocumentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<File> files});
}

/// @nodoc
class __$$AttachDocumentsImplCopyWithImpl<$Res>
    extends _$AttachDocumentsCopyWithImpl<$Res, _$AttachDocumentsImpl>
    implements _$$AttachDocumentsImplCopyWith<$Res> {
  __$$AttachDocumentsImplCopyWithImpl(
      _$AttachDocumentsImpl _value, $Res Function(_$AttachDocumentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_$AttachDocumentsImpl(
      null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$AttachDocumentsImpl implements _AttachDocuments {
  const _$AttachDocumentsImpl(final List<File> files) : _files = files;

  final List<File> _files;
  @override
  List<File> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'AttachDocuments(files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachDocumentsImpl &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachDocumentsImplCopyWith<_$AttachDocumentsImpl> get copyWith =>
      __$$AttachDocumentsImplCopyWithImpl<_$AttachDocumentsImpl>(
          this, _$identity);
}

abstract class _AttachDocuments implements AttachDocuments {
  const factory _AttachDocuments(final List<File> files) =
      _$AttachDocumentsImpl;

  @override
  List<File> get files;
  @override
  @JsonKey(ignore: true)
  _$$AttachDocumentsImplCopyWith<_$AttachDocumentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoveDocument {
  Document get document => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoveDocumentCopyWith<RemoveDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveDocumentCopyWith<$Res> {
  factory $RemoveDocumentCopyWith(
          RemoveDocument value, $Res Function(RemoveDocument) then) =
      _$RemoveDocumentCopyWithImpl<$Res, RemoveDocument>;
  @useResult
  $Res call({Document document});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class _$RemoveDocumentCopyWithImpl<$Res, $Val extends RemoveDocument>
    implements $RemoveDocumentCopyWith<$Res> {
  _$RemoveDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_value.copyWith(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemoveDocumentImplCopyWith<$Res>
    implements $RemoveDocumentCopyWith<$Res> {
  factory _$$RemoveDocumentImplCopyWith(_$RemoveDocumentImpl value,
          $Res Function(_$RemoveDocumentImpl) then) =
      __$$RemoveDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Document document});

  @override
  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$$RemoveDocumentImplCopyWithImpl<$Res>
    extends _$RemoveDocumentCopyWithImpl<$Res, _$RemoveDocumentImpl>
    implements _$$RemoveDocumentImplCopyWith<$Res> {
  __$$RemoveDocumentImplCopyWithImpl(
      _$RemoveDocumentImpl _value, $Res Function(_$RemoveDocumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$RemoveDocumentImpl(
      null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }
}

/// @nodoc

class _$RemoveDocumentImpl implements _RemoveDocument {
  const _$RemoveDocumentImpl(this.document);

  @override
  final Document document;

  @override
  String toString() {
    return 'RemoveDocument(document: $document)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDocumentImpl &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @override
  int get hashCode => Object.hash(runtimeType, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveDocumentImplCopyWith<_$RemoveDocumentImpl> get copyWith =>
      __$$RemoveDocumentImplCopyWithImpl<_$RemoveDocumentImpl>(
          this, _$identity);
}

abstract class _RemoveDocument implements RemoveDocument {
  const factory _RemoveDocument(final Document document) = _$RemoveDocumentImpl;

  @override
  Document get document;
  @override
  @JsonKey(ignore: true)
  _$$RemoveDocumentImplCopyWith<_$RemoveDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendTypingIndicator {}

/// @nodoc
abstract class $SendTypingIndicatorCopyWith<$Res> {
  factory $SendTypingIndicatorCopyWith(
          SendTypingIndicator value, $Res Function(SendTypingIndicator) then) =
      _$SendTypingIndicatorCopyWithImpl<$Res, SendTypingIndicator>;
}

/// @nodoc
class _$SendTypingIndicatorCopyWithImpl<$Res, $Val extends SendTypingIndicator>
    implements $SendTypingIndicatorCopyWith<$Res> {
  _$SendTypingIndicatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendTypingIndicatorImplCopyWith<$Res> {
  factory _$$SendTypingIndicatorImplCopyWith(_$SendTypingIndicatorImpl value,
          $Res Function(_$SendTypingIndicatorImpl) then) =
      __$$SendTypingIndicatorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendTypingIndicatorImplCopyWithImpl<$Res>
    extends _$SendTypingIndicatorCopyWithImpl<$Res, _$SendTypingIndicatorImpl>
    implements _$$SendTypingIndicatorImplCopyWith<$Res> {
  __$$SendTypingIndicatorImplCopyWithImpl(_$SendTypingIndicatorImpl _value,
      $Res Function(_$SendTypingIndicatorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendTypingIndicatorImpl implements _SendTypingIndicator {
  const _$SendTypingIndicatorImpl();

  @override
  String toString() {
    return 'SendTypingIndicator()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTypingIndicatorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SendTypingIndicator implements SendTypingIndicator {
  const factory _SendTypingIndicator() = _$SendTypingIndicatorImpl;
}

/// @nodoc
mixin _$SetTypingIndicator {
  TypingIndicator get typingIndicator => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetTypingIndicatorCopyWith<SetTypingIndicator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetTypingIndicatorCopyWith<$Res> {
  factory $SetTypingIndicatorCopyWith(
          SetTypingIndicator value, $Res Function(SetTypingIndicator) then) =
      _$SetTypingIndicatorCopyWithImpl<$Res, SetTypingIndicator>;
  @useResult
  $Res call({TypingIndicator typingIndicator});

  $TypingIndicatorCopyWith<$Res> get typingIndicator;
}

/// @nodoc
class _$SetTypingIndicatorCopyWithImpl<$Res, $Val extends SetTypingIndicator>
    implements $SetTypingIndicatorCopyWith<$Res> {
  _$SetTypingIndicatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typingIndicator = null,
  }) {
    return _then(_value.copyWith(
      typingIndicator: null == typingIndicator
          ? _value.typingIndicator
          : typingIndicator // ignore: cast_nullable_to_non_nullable
              as TypingIndicator,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypingIndicatorCopyWith<$Res> get typingIndicator {
    return $TypingIndicatorCopyWith<$Res>(_value.typingIndicator, (value) {
      return _then(_value.copyWith(typingIndicator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetTypingIndicatorImplCopyWith<$Res>
    implements $SetTypingIndicatorCopyWith<$Res> {
  factory _$$SetTypingIndicatorImplCopyWith(_$SetTypingIndicatorImpl value,
          $Res Function(_$SetTypingIndicatorImpl) then) =
      __$$SetTypingIndicatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TypingIndicator typingIndicator});

  @override
  $TypingIndicatorCopyWith<$Res> get typingIndicator;
}

/// @nodoc
class __$$SetTypingIndicatorImplCopyWithImpl<$Res>
    extends _$SetTypingIndicatorCopyWithImpl<$Res, _$SetTypingIndicatorImpl>
    implements _$$SetTypingIndicatorImplCopyWith<$Res> {
  __$$SetTypingIndicatorImplCopyWithImpl(_$SetTypingIndicatorImpl _value,
      $Res Function(_$SetTypingIndicatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typingIndicator = null,
  }) {
    return _then(_$SetTypingIndicatorImpl(
      null == typingIndicator
          ? _value.typingIndicator
          : typingIndicator // ignore: cast_nullable_to_non_nullable
              as TypingIndicator,
    ));
  }
}

/// @nodoc

class _$SetTypingIndicatorImpl implements _SetTypingIndicator {
  const _$SetTypingIndicatorImpl(this.typingIndicator);

  @override
  final TypingIndicator typingIndicator;

  @override
  String toString() {
    return 'SetTypingIndicator(typingIndicator: $typingIndicator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTypingIndicatorImpl &&
            (identical(other.typingIndicator, typingIndicator) ||
                other.typingIndicator == typingIndicator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typingIndicator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetTypingIndicatorImplCopyWith<_$SetTypingIndicatorImpl> get copyWith =>
      __$$SetTypingIndicatorImplCopyWithImpl<_$SetTypingIndicatorImpl>(
          this, _$identity);
}

abstract class _SetTypingIndicator implements SetTypingIndicator {
  const factory _SetTypingIndicator(final TypingIndicator typingIndicator) =
      _$SetTypingIndicatorImpl;

  @override
  TypingIndicator get typingIndicator;
  @override
  @JsonKey(ignore: true)
  _$$SetTypingIndicatorImplCopyWith<_$SetTypingIndicatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewMessageReceived {
  Message get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewMessageReceivedCopyWith<NewMessageReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewMessageReceivedCopyWith<$Res> {
  factory $NewMessageReceivedCopyWith(
          NewMessageReceived value, $Res Function(NewMessageReceived) then) =
      _$NewMessageReceivedCopyWithImpl<$Res, NewMessageReceived>;
  @useResult
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$NewMessageReceivedCopyWithImpl<$Res, $Val extends NewMessageReceived>
    implements $NewMessageReceivedCopyWith<$Res> {
  _$NewMessageReceivedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewMessageReceivedImplCopyWith<$Res>
    implements $NewMessageReceivedCopyWith<$Res> {
  factory _$$NewMessageReceivedImplCopyWith(_$NewMessageReceivedImpl value,
          $Res Function(_$NewMessageReceivedImpl) then) =
      __$$NewMessageReceivedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$NewMessageReceivedImplCopyWithImpl<$Res>
    extends _$NewMessageReceivedCopyWithImpl<$Res, _$NewMessageReceivedImpl>
    implements _$$NewMessageReceivedImplCopyWith<$Res> {
  __$$NewMessageReceivedImplCopyWithImpl(_$NewMessageReceivedImpl _value,
      $Res Function(_$NewMessageReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NewMessageReceivedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$NewMessageReceivedImpl implements _NewMessageReceived {
  const _$NewMessageReceivedImpl(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'NewMessageReceived(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewMessageReceivedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewMessageReceivedImplCopyWith<_$NewMessageReceivedImpl> get copyWith =>
      __$$NewMessageReceivedImplCopyWithImpl<_$NewMessageReceivedImpl>(
          this, _$identity);
}

abstract class _NewMessageReceived implements NewMessageReceived {
  const factory _NewMessageReceived(final Message message) =
      _$NewMessageReceivedImpl;

  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  _$$NewMessageReceivedImplCopyWith<_$NewMessageReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageEdited {
  Message get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageEditedCopyWith<MessageEdited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEditedCopyWith<$Res> {
  factory $MessageEditedCopyWith(
          MessageEdited value, $Res Function(MessageEdited) then) =
      _$MessageEditedCopyWithImpl<$Res, MessageEdited>;
  @useResult
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$MessageEditedCopyWithImpl<$Res, $Val extends MessageEdited>
    implements $MessageEditedCopyWith<$Res> {
  _$MessageEditedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageEditedImplCopyWith<$Res>
    implements $MessageEditedCopyWith<$Res> {
  factory _$$MessageEditedImplCopyWith(
          _$MessageEditedImpl value, $Res Function(_$MessageEditedImpl) then) =
      __$$MessageEditedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageEditedImplCopyWithImpl<$Res>
    extends _$MessageEditedCopyWithImpl<$Res, _$MessageEditedImpl>
    implements _$$MessageEditedImplCopyWith<$Res> {
  __$$MessageEditedImplCopyWithImpl(
      _$MessageEditedImpl _value, $Res Function(_$MessageEditedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageEditedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$MessageEditedImpl implements _MessageEdited {
  const _$MessageEditedImpl(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'MessageEdited(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageEditedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageEditedImplCopyWith<_$MessageEditedImpl> get copyWith =>
      __$$MessageEditedImplCopyWithImpl<_$MessageEditedImpl>(this, _$identity);
}

abstract class _MessageEdited implements MessageEdited {
  const factory _MessageEdited(final Message message) = _$MessageEditedImpl;

  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  _$$MessageEditedImplCopyWith<_$MessageEditedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageDeleted {
  int get deletedMessageId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageDeletedCopyWith<MessageDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDeletedCopyWith<$Res> {
  factory $MessageDeletedCopyWith(
          MessageDeleted value, $Res Function(MessageDeleted) then) =
      _$MessageDeletedCopyWithImpl<$Res, MessageDeleted>;
  @useResult
  $Res call({int deletedMessageId});
}

/// @nodoc
class _$MessageDeletedCopyWithImpl<$Res, $Val extends MessageDeleted>
    implements $MessageDeletedCopyWith<$Res> {
  _$MessageDeletedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedMessageId = null,
  }) {
    return _then(_value.copyWith(
      deletedMessageId: null == deletedMessageId
          ? _value.deletedMessageId
          : deletedMessageId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageDeletedImplCopyWith<$Res>
    implements $MessageDeletedCopyWith<$Res> {
  factory _$$MessageDeletedImplCopyWith(_$MessageDeletedImpl value,
          $Res Function(_$MessageDeletedImpl) then) =
      __$$MessageDeletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int deletedMessageId});
}

/// @nodoc
class __$$MessageDeletedImplCopyWithImpl<$Res>
    extends _$MessageDeletedCopyWithImpl<$Res, _$MessageDeletedImpl>
    implements _$$MessageDeletedImplCopyWith<$Res> {
  __$$MessageDeletedImplCopyWithImpl(
      _$MessageDeletedImpl _value, $Res Function(_$MessageDeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedMessageId = null,
  }) {
    return _then(_$MessageDeletedImpl(
      null == deletedMessageId
          ? _value.deletedMessageId
          : deletedMessageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MessageDeletedImpl implements _MessageDeleted {
  const _$MessageDeletedImpl(this.deletedMessageId);

  @override
  final int deletedMessageId;

  @override
  String toString() {
    return 'MessageDeleted(deletedMessageId: $deletedMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDeletedImpl &&
            (identical(other.deletedMessageId, deletedMessageId) ||
                other.deletedMessageId == deletedMessageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deletedMessageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDeletedImplCopyWith<_$MessageDeletedImpl> get copyWith =>
      __$$MessageDeletedImplCopyWithImpl<_$MessageDeletedImpl>(
          this, _$identity);
}

abstract class _MessageDeleted implements MessageDeleted {
  const factory _MessageDeleted(final int deletedMessageId) =
      _$MessageDeletedImpl;

  @override
  int get deletedMessageId;
  @override
  @JsonKey(ignore: true)
  _$$MessageDeletedImplCopyWith<_$MessageDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppResumed {}

/// @nodoc
abstract class $AppResumedCopyWith<$Res> {
  factory $AppResumedCopyWith(
          AppResumed value, $Res Function(AppResumed) then) =
      _$AppResumedCopyWithImpl<$Res, AppResumed>;
}

/// @nodoc
class _$AppResumedCopyWithImpl<$Res, $Val extends AppResumed>
    implements $AppResumedCopyWith<$Res> {
  _$AppResumedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppResumedImplCopyWith<$Res> {
  factory _$$AppResumedImplCopyWith(
          _$AppResumedImpl value, $Res Function(_$AppResumedImpl) then) =
      __$$AppResumedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppResumedImplCopyWithImpl<$Res>
    extends _$AppResumedCopyWithImpl<$Res, _$AppResumedImpl>
    implements _$$AppResumedImplCopyWith<$Res> {
  __$$AppResumedImplCopyWithImpl(
      _$AppResumedImpl _value, $Res Function(_$AppResumedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppResumedImpl implements _AppResumed {
  const _$AppResumedImpl();

  @override
  String toString() {
    return 'AppResumed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppResumedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AppResumed implements AppResumed {
  const factory _AppResumed() = _$AppResumedImpl;
}

/// @nodoc
mixin _$AppSuspended {}

/// @nodoc
abstract class $AppSuspendedCopyWith<$Res> {
  factory $AppSuspendedCopyWith(
          AppSuspended value, $Res Function(AppSuspended) then) =
      _$AppSuspendedCopyWithImpl<$Res, AppSuspended>;
}

/// @nodoc
class _$AppSuspendedCopyWithImpl<$Res, $Val extends AppSuspended>
    implements $AppSuspendedCopyWith<$Res> {
  _$AppSuspendedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppSuspendedImplCopyWith<$Res> {
  factory _$$AppSuspendedImplCopyWith(
          _$AppSuspendedImpl value, $Res Function(_$AppSuspendedImpl) then) =
      __$$AppSuspendedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppSuspendedImplCopyWithImpl<$Res>
    extends _$AppSuspendedCopyWithImpl<$Res, _$AppSuspendedImpl>
    implements _$$AppSuspendedImplCopyWith<$Res> {
  __$$AppSuspendedImplCopyWithImpl(
      _$AppSuspendedImpl _value, $Res Function(_$AppSuspendedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppSuspendedImpl implements _AppSuspended {
  const _$AppSuspendedImpl();

  @override
  String toString() {
    return 'AppSuspended()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppSuspendedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AppSuspended implements AppSuspended {
  const factory _AppSuspended() = _$AppSuspendedImpl;
}

/// @nodoc
mixin _$ChatDetailState {
  PagedList<Message> get pagedMessageList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError; // For message input
  Message? get editingMessage => throw _privateConstructorUsedError;
  List<Document> get documents => throw _privateConstructorUsedError;
  Message? get toReplyMessage => throw _privateConstructorUsedError;
  TypingIndicator? get typingIndicator => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatDetailStateCopyWith<ChatDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailStateCopyWith<$Res> {
  factory $ChatDetailStateCopyWith(
          ChatDetailState value, $Res Function(ChatDetailState) then) =
      _$ChatDetailStateCopyWithImpl<$Res, ChatDetailState>;
  @useResult
  $Res call(
      {PagedList<Message> pagedMessageList,
      bool isLoading,
      Message? editingMessage,
      List<Document> documents,
      Message? toReplyMessage,
      TypingIndicator? typingIndicator});

  $PagedListCopyWith<Message, $Res> get pagedMessageList;
  $MessageCopyWith<$Res>? get editingMessage;
  $MessageCopyWith<$Res>? get toReplyMessage;
  $TypingIndicatorCopyWith<$Res>? get typingIndicator;
}

/// @nodoc
class _$ChatDetailStateCopyWithImpl<$Res, $Val extends ChatDetailState>
    implements $ChatDetailStateCopyWith<$Res> {
  _$ChatDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagedMessageList = null,
    Object? isLoading = null,
    Object? editingMessage = freezed,
    Object? documents = null,
    Object? toReplyMessage = freezed,
    Object? typingIndicator = freezed,
  }) {
    return _then(_value.copyWith(
      pagedMessageList: null == pagedMessageList
          ? _value.pagedMessageList
          : pagedMessageList // ignore: cast_nullable_to_non_nullable
              as PagedList<Message>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      editingMessage: freezed == editingMessage
          ? _value.editingMessage
          : editingMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
      toReplyMessage: freezed == toReplyMessage
          ? _value.toReplyMessage
          : toReplyMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      typingIndicator: freezed == typingIndicator
          ? _value.typingIndicator
          : typingIndicator // ignore: cast_nullable_to_non_nullable
              as TypingIndicator?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PagedListCopyWith<Message, $Res> get pagedMessageList {
    return $PagedListCopyWith<Message, $Res>(_value.pagedMessageList, (value) {
      return _then(_value.copyWith(pagedMessageList: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get editingMessage {
    if (_value.editingMessage == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.editingMessage!, (value) {
      return _then(_value.copyWith(editingMessage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get toReplyMessage {
    if (_value.toReplyMessage == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.toReplyMessage!, (value) {
      return _then(_value.copyWith(toReplyMessage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TypingIndicatorCopyWith<$Res>? get typingIndicator {
    if (_value.typingIndicator == null) {
      return null;
    }

    return $TypingIndicatorCopyWith<$Res>(_value.typingIndicator!, (value) {
      return _then(_value.copyWith(typingIndicator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatDetailStateImplCopyWith<$Res>
    implements $ChatDetailStateCopyWith<$Res> {
  factory _$$ChatDetailStateImplCopyWith(_$ChatDetailStateImpl value,
          $Res Function(_$ChatDetailStateImpl) then) =
      __$$ChatDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PagedList<Message> pagedMessageList,
      bool isLoading,
      Message? editingMessage,
      List<Document> documents,
      Message? toReplyMessage,
      TypingIndicator? typingIndicator});

  @override
  $PagedListCopyWith<Message, $Res> get pagedMessageList;
  @override
  $MessageCopyWith<$Res>? get editingMessage;
  @override
  $MessageCopyWith<$Res>? get toReplyMessage;
  @override
  $TypingIndicatorCopyWith<$Res>? get typingIndicator;
}

/// @nodoc
class __$$ChatDetailStateImplCopyWithImpl<$Res>
    extends _$ChatDetailStateCopyWithImpl<$Res, _$ChatDetailStateImpl>
    implements _$$ChatDetailStateImplCopyWith<$Res> {
  __$$ChatDetailStateImplCopyWithImpl(
      _$ChatDetailStateImpl _value, $Res Function(_$ChatDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagedMessageList = null,
    Object? isLoading = null,
    Object? editingMessage = freezed,
    Object? documents = null,
    Object? toReplyMessage = freezed,
    Object? typingIndicator = freezed,
  }) {
    return _then(_$ChatDetailStateImpl(
      pagedMessageList: null == pagedMessageList
          ? _value.pagedMessageList
          : pagedMessageList // ignore: cast_nullable_to_non_nullable
              as PagedList<Message>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      editingMessage: freezed == editingMessage
          ? _value.editingMessage
          : editingMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
      toReplyMessage: freezed == toReplyMessage
          ? _value.toReplyMessage
          : toReplyMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      typingIndicator: freezed == typingIndicator
          ? _value.typingIndicator
          : typingIndicator // ignore: cast_nullable_to_non_nullable
              as TypingIndicator?,
    ));
  }
}

/// @nodoc

class _$ChatDetailStateImpl extends _ChatDetailState {
  const _$ChatDetailStateImpl(
      {required this.pagedMessageList,
      this.isLoading = false,
      this.editingMessage,
      final List<Document> documents = const <Document>[],
      this.toReplyMessage,
      this.typingIndicator})
      : _documents = documents,
        super._();

  @override
  final PagedList<Message> pagedMessageList;
  @override
  @JsonKey()
  final bool isLoading;
// For message input
  @override
  final Message? editingMessage;
  final List<Document> _documents;
  @override
  @JsonKey()
  List<Document> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  final Message? toReplyMessage;
  @override
  final TypingIndicator? typingIndicator;

  @override
  String toString() {
    return 'ChatDetailState(pagedMessageList: $pagedMessageList, isLoading: $isLoading, editingMessage: $editingMessage, documents: $documents, toReplyMessage: $toReplyMessage, typingIndicator: $typingIndicator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDetailStateImpl &&
            (identical(other.pagedMessageList, pagedMessageList) ||
                other.pagedMessageList == pagedMessageList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.editingMessage, editingMessage) ||
                other.editingMessage == editingMessage) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.toReplyMessage, toReplyMessage) ||
                other.toReplyMessage == toReplyMessage) &&
            (identical(other.typingIndicator, typingIndicator) ||
                other.typingIndicator == typingIndicator));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pagedMessageList,
      isLoading,
      editingMessage,
      const DeepCollectionEquality().hash(_documents),
      toReplyMessage,
      typingIndicator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDetailStateImplCopyWith<_$ChatDetailStateImpl> get copyWith =>
      __$$ChatDetailStateImplCopyWithImpl<_$ChatDetailStateImpl>(
          this, _$identity);
}

abstract class _ChatDetailState extends ChatDetailState {
  const factory _ChatDetailState(
      {required final PagedList<Message> pagedMessageList,
      final bool isLoading,
      final Message? editingMessage,
      final List<Document> documents,
      final Message? toReplyMessage,
      final TypingIndicator? typingIndicator}) = _$ChatDetailStateImpl;
  const _ChatDetailState._() : super._();

  @override
  PagedList<Message> get pagedMessageList;
  @override
  bool get isLoading;
  @override // For message input
  Message? get editingMessage;
  @override
  List<Document> get documents;
  @override
  Message? get toReplyMessage;
  @override
  TypingIndicator? get typingIndicator;
  @override
  @JsonKey(ignore: true)
  _$$ChatDetailStateImplCopyWith<_$ChatDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
