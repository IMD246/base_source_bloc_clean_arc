// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetConversations {}

/// @nodoc
abstract class $GetConversationsCopyWith<$Res> {
  factory $GetConversationsCopyWith(GetConversations value, $Res Function(GetConversations) then) =
      _$GetConversationsCopyWithImpl<$Res, GetConversations>;
}

/// @nodoc
class _$GetConversationsCopyWithImpl<$Res, $Val extends GetConversations> implements $GetConversationsCopyWith<$Res> {
  _$GetConversationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetConversationsCopyWith<$Res> {
  factory _$$_GetConversationsCopyWith(_$_GetConversations value, $Res Function(_$_GetConversations) then) =
      __$$_GetConversationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetConversationsCopyWithImpl<$Res> extends _$GetConversationsCopyWithImpl<$Res, _$_GetConversations>
    implements _$$_GetConversationsCopyWith<$Res> {
  __$$_GetConversationsCopyWithImpl(_$_GetConversations _value, $Res Function(_$_GetConversations) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetConversations implements _GetConversations {
  const _$_GetConversations();

  @override
  String toString() {
    return 'GetConversations()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_GetConversations);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _GetConversations implements GetConversations {
  const factory _GetConversations() = _$_GetConversations;
}

/// @nodoc
mixin _$ChatRoomState {
  List<Conversation> get conversations => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatRoomStateCopyWith<ChatRoomState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomStateCopyWith<$Res> {
  factory $ChatRoomStateCopyWith(ChatRoomState value, $Res Function(ChatRoomState) then) =
      _$ChatRoomStateCopyWithImpl<$Res, ChatRoomState>;
  @useResult
  $Res call({List<Conversation> conversations, bool isLoading});
}

/// @nodoc
class _$ChatRoomStateCopyWithImpl<$Res, $Val extends ChatRoomState> implements $ChatRoomStateCopyWith<$Res> {
  _$ChatRoomStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_ChatRoomStateCopyWith<$Res> implements $ChatRoomStateCopyWith<$Res> {
  factory _$$_ChatRoomStateCopyWith(_$_ChatRoomState value, $Res Function(_$_ChatRoomState) then) =
      __$$_ChatRoomStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Conversation> conversations, bool isLoading});
}

/// @nodoc
class __$$_ChatRoomStateCopyWithImpl<$Res> extends _$ChatRoomStateCopyWithImpl<$Res, _$_ChatRoomState>
    implements _$$_ChatRoomStateCopyWith<$Res> {
  __$$_ChatRoomStateCopyWithImpl(_$_ChatRoomState _value, $Res Function(_$_ChatRoomState) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? isLoading = null,
  }) {
    return _then(_$_ChatRoomState(
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

class _$_ChatRoomState implements _ChatRoomState {
  const _$_ChatRoomState({required final List<Conversation> conversations, this.isLoading = false})
      : _conversations = conversations;

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
    return 'ChatRoomState(conversations: $conversations, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatRoomState &&
            const DeepCollectionEquality().equals(other._conversations, _conversations) &&
            (identical(other.isLoading, isLoading) || other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_conversations), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatRoomStateCopyWith<_$_ChatRoomState> get copyWith =>
      __$$_ChatRoomStateCopyWithImpl<_$_ChatRoomState>(this, _$identity);
}

abstract class _ChatRoomState implements ChatRoomState {
  const factory _ChatRoomState({required final List<Conversation> conversations, final bool isLoading}) =
      _$_ChatRoomState;

  @override
  List<Conversation> get conversations;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ChatRoomStateCopyWith<_$_ChatRoomState> get copyWith => throw _privateConstructorUsedError;
}
