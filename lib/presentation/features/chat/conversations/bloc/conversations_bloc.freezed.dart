// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConversationsInitial {}

/// @nodoc
abstract class $ConversationsInitialCopyWith<$Res> {
  factory $ConversationsInitialCopyWith(ConversationsInitial value,
          $Res Function(ConversationsInitial) then) =
      _$ConversationsInitialCopyWithImpl<$Res, ConversationsInitial>;
}

/// @nodoc
class _$ConversationsInitialCopyWithImpl<$Res,
        $Val extends ConversationsInitial>
    implements $ConversationsInitialCopyWith<$Res> {
  _$ConversationsInitialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConversationsInitialImplCopyWith<$Res> {
  factory _$$ConversationsInitialImplCopyWith(_$ConversationsInitialImpl value,
          $Res Function(_$ConversationsInitialImpl) then) =
      __$$ConversationsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConversationsInitialImplCopyWithImpl<$Res>
    extends _$ConversationsInitialCopyWithImpl<$Res, _$ConversationsInitialImpl>
    implements _$$ConversationsInitialImplCopyWith<$Res> {
  __$$ConversationsInitialImplCopyWithImpl(_$ConversationsInitialImpl _value,
      $Res Function(_$ConversationsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConversationsInitialImpl implements _ConversationsInitial {
  const _$ConversationsInitialImpl();

  @override
  String toString() {
    return 'ConversationsInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ConversationsInitial implements ConversationsInitial {
  const factory _ConversationsInitial() = _$ConversationsInitialImpl;
}

/// @nodoc
mixin _$GetConversations {}

/// @nodoc
abstract class $GetConversationsCopyWith<$Res> {
  factory $GetConversationsCopyWith(
          GetConversations value, $Res Function(GetConversations) then) =
      _$GetConversationsCopyWithImpl<$Res, GetConversations>;
}

/// @nodoc
class _$GetConversationsCopyWithImpl<$Res, $Val extends GetConversations>
    implements $GetConversationsCopyWith<$Res> {
  _$GetConversationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetConversationsImplCopyWith<$Res> {
  factory _$$GetConversationsImplCopyWith(_$GetConversationsImpl value,
          $Res Function(_$GetConversationsImpl) then) =
      __$$GetConversationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetConversationsImplCopyWithImpl<$Res>
    extends _$GetConversationsCopyWithImpl<$Res, _$GetConversationsImpl>
    implements _$$GetConversationsImplCopyWith<$Res> {
  __$$GetConversationsImplCopyWithImpl(_$GetConversationsImpl _value,
      $Res Function(_$GetConversationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetConversationsImpl implements _GetConversations {
  const _$GetConversationsImpl();

  @override
  String toString() {
    return 'GetConversations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetConversationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _GetConversations implements GetConversations {
  const factory _GetConversations() = _$GetConversationsImpl;
}

/// @nodoc
mixin _$UpdateLastMessage {
  int get conversationId => throw _privateConstructorUsedError;
  Message get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateLastMessageCopyWith<UpdateLastMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateLastMessageCopyWith<$Res> {
  factory $UpdateLastMessageCopyWith(
          UpdateLastMessage value, $Res Function(UpdateLastMessage) then) =
      _$UpdateLastMessageCopyWithImpl<$Res, UpdateLastMessage>;
  @useResult
  $Res call({int conversationId, Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$UpdateLastMessageCopyWithImpl<$Res, $Val extends UpdateLastMessage>
    implements $UpdateLastMessageCopyWith<$Res> {
  _$UpdateLastMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$UpdateLastMessageImplCopyWith<$Res>
    implements $UpdateLastMessageCopyWith<$Res> {
  factory _$$UpdateLastMessageImplCopyWith(_$UpdateLastMessageImpl value,
          $Res Function(_$UpdateLastMessageImpl) then) =
      __$$UpdateLastMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int conversationId, Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$UpdateLastMessageImplCopyWithImpl<$Res>
    extends _$UpdateLastMessageCopyWithImpl<$Res, _$UpdateLastMessageImpl>
    implements _$$UpdateLastMessageImplCopyWith<$Res> {
  __$$UpdateLastMessageImplCopyWithImpl(_$UpdateLastMessageImpl _value,
      $Res Function(_$UpdateLastMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? message = null,
  }) {
    return _then(_$UpdateLastMessageImpl(
      null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$UpdateLastMessageImpl implements _UpdateLastMessage {
  const _$UpdateLastMessageImpl(this.conversationId, this.message);

  @override
  final int conversationId;
  @override
  final Message message;

  @override
  String toString() {
    return 'UpdateLastMessage(conversationId: $conversationId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLastMessageImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLastMessageImplCopyWith<_$UpdateLastMessageImpl> get copyWith =>
      __$$UpdateLastMessageImplCopyWithImpl<_$UpdateLastMessageImpl>(
          this, _$identity);
}

abstract class _UpdateLastMessage implements UpdateLastMessage {
  const factory _UpdateLastMessage(
          final int conversationId, final Message message) =
      _$UpdateLastMessageImpl;

  @override
  int get conversationId;
  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  _$$UpdateLastMessageImplCopyWith<_$UpdateLastMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateConversations {
  List<Conversation> get conversations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateConversationsCopyWith<UpdateConversations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateConversationsCopyWith<$Res> {
  factory $UpdateConversationsCopyWith(
          UpdateConversations value, $Res Function(UpdateConversations) then) =
      _$UpdateConversationsCopyWithImpl<$Res, UpdateConversations>;
  @useResult
  $Res call({List<Conversation> conversations});
}

/// @nodoc
class _$UpdateConversationsCopyWithImpl<$Res, $Val extends UpdateConversations>
    implements $UpdateConversationsCopyWith<$Res> {
  _$UpdateConversationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
  }) {
    return _then(_value.copyWith(
      conversations: null == conversations
          ? _value.conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateConversationsImplCopyWith<$Res>
    implements $UpdateConversationsCopyWith<$Res> {
  factory _$$UpdateConversationsImplCopyWith(_$UpdateConversationsImpl value,
          $Res Function(_$UpdateConversationsImpl) then) =
      __$$UpdateConversationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Conversation> conversations});
}

/// @nodoc
class __$$UpdateConversationsImplCopyWithImpl<$Res>
    extends _$UpdateConversationsCopyWithImpl<$Res, _$UpdateConversationsImpl>
    implements _$$UpdateConversationsImplCopyWith<$Res> {
  __$$UpdateConversationsImplCopyWithImpl(_$UpdateConversationsImpl _value,
      $Res Function(_$UpdateConversationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
  }) {
    return _then(_$UpdateConversationsImpl(
      null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
    ));
  }
}

/// @nodoc

class _$UpdateConversationsImpl implements _UpdateConversations {
  const _$UpdateConversationsImpl(final List<Conversation> conversations)
      : _conversations = conversations;

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  String toString() {
    return 'UpdateConversations(conversations: $conversations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateConversationsImpl &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conversations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateConversationsImplCopyWith<_$UpdateConversationsImpl> get copyWith =>
      __$$UpdateConversationsImplCopyWithImpl<_$UpdateConversationsImpl>(
          this, _$identity);
}

abstract class _UpdateConversations implements UpdateConversations {
  const factory _UpdateConversations(final List<Conversation> conversations) =
      _$UpdateConversationsImpl;

  @override
  List<Conversation> get conversations;
  @override
  @JsonKey(ignore: true)
  _$$UpdateConversationsImplCopyWith<_$UpdateConversationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConversationsState _$ConversationsStateFromJson(Map<String, dynamic> json) {
  return _ConversationsState.fromJson(json);
}

/// @nodoc
mixin _$ConversationsState {
  List<Conversation> get conversations => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationsStateCopyWith<ConversationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationsStateCopyWith<$Res> {
  factory $ConversationsStateCopyWith(
          ConversationsState value, $Res Function(ConversationsState) then) =
      _$ConversationsStateCopyWithImpl<$Res, ConversationsState>;
  @useResult
  $Res call({List<Conversation> conversations, bool isLoading});
}

/// @nodoc
class _$ConversationsStateCopyWithImpl<$Res, $Val extends ConversationsState>
    implements $ConversationsStateCopyWith<$Res> {
  _$ConversationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      conversations: null == conversations
          ? _value.conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationsStateImplCopyWith<$Res>
    implements $ConversationsStateCopyWith<$Res> {
  factory _$$ConversationsStateImplCopyWith(_$ConversationsStateImpl value,
          $Res Function(_$ConversationsStateImpl) then) =
      __$$ConversationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Conversation> conversations, bool isLoading});
}

/// @nodoc
class __$$ConversationsStateImplCopyWithImpl<$Res>
    extends _$ConversationsStateCopyWithImpl<$Res, _$ConversationsStateImpl>
    implements _$$ConversationsStateImplCopyWith<$Res> {
  __$$ConversationsStateImplCopyWithImpl(_$ConversationsStateImpl _value,
      $Res Function(_$ConversationsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? isLoading = null,
  }) {
    return _then(_$ConversationsStateImpl(
      conversations: null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationsStateImpl implements _ConversationsState {
  const _$ConversationsStateImpl(
      {required final List<Conversation> conversations, this.isLoading = false})
      : _conversations = conversations;

  factory _$ConversationsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationsStateImplFromJson(json);

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ConversationsState(conversations: $conversations, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_conversations), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationsStateImplCopyWith<_$ConversationsStateImpl> get copyWith =>
      __$$ConversationsStateImplCopyWithImpl<_$ConversationsStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationsStateImplToJson(
      this,
    );
  }
}

abstract class _ConversationsState implements ConversationsState {
  const factory _ConversationsState(
      {required final List<Conversation> conversations,
      final bool isLoading}) = _$ConversationsStateImpl;

  factory _ConversationsState.fromJson(Map<String, dynamic> json) =
      _$ConversationsStateImpl.fromJson;

  @override
  List<Conversation> get conversations;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$ConversationsStateImplCopyWith<_$ConversationsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
