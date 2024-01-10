// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Conversation _$ConversationFromJson(Map<String, dynamic> json) {
  return _Conversation.fromJson(json);
}

/// @nodoc
mixin _$Conversation {
  int get discussionId => throw _privateConstructorUsedError;
  int get parentId => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get createdByContactId => throw _privateConstructorUsedError;
  ConversationType get type => throw _privateConstructorUsedError;
  ConversationCategoryType get categoryType =>
      throw _privateConstructorUsedError;
  int get referenceId => throw _privateConstructorUsedError;
  Message? get lastMessage => throw _privateConstructorUsedError;
  DateTime? get lastMessageAt => throw _privateConstructorUsedError;
  int get unreadCount =>
      throw _privateConstructorUsedError; // For type: [ConversationType.private] only
  User? get targetUser => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool get isOnline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationCopyWith<Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationCopyWith<$Res> {
  factory $ConversationCopyWith(
          Conversation value, $Res Function(Conversation) then) =
      _$ConversationCopyWithImpl<$Res, Conversation>;
  @useResult
  $Res call(
      {int discussionId,
      int parentId,
      String topic,
      String imageUrl,
      int createdByContactId,
      ConversationType type,
      ConversationCategoryType categoryType,
      int referenceId,
      Message? lastMessage,
      DateTime? lastMessageAt,
      int unreadCount,
      User? targetUser,
      @JsonKey(includeFromJson: false, includeToJson: false) bool isOnline});

  $MessageCopyWith<$Res>? get lastMessage;
  $UserCopyWith<$Res>? get targetUser;
}

/// @nodoc
class _$ConversationCopyWithImpl<$Res, $Val extends Conversation>
    implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discussionId = null,
    Object? parentId = null,
    Object? topic = null,
    Object? imageUrl = null,
    Object? createdByContactId = null,
    Object? type = null,
    Object? categoryType = null,
    Object? referenceId = null,
    Object? lastMessage = freezed,
    Object? lastMessageAt = freezed,
    Object? unreadCount = null,
    Object? targetUser = freezed,
    Object? isOnline = null,
  }) {
    return _then(_value.copyWith(
      discussionId: null == discussionId
          ? _value.discussionId
          : discussionId // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdByContactId: null == createdByContactId
          ? _value.createdByContactId
          : createdByContactId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ConversationType,
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as ConversationCategoryType,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as int,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      lastMessageAt: freezed == lastMessageAt
          ? _value.lastMessageAt
          : lastMessageAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      targetUser: freezed == targetUser
          ? _value.targetUser
          : targetUser // ignore: cast_nullable_to_non_nullable
              as User?,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get targetUser {
    if (_value.targetUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.targetUser!, (value) {
      return _then(_value.copyWith(targetUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConversationImplCopyWith<$Res>
    implements $ConversationCopyWith<$Res> {
  factory _$$ConversationImplCopyWith(
          _$ConversationImpl value, $Res Function(_$ConversationImpl) then) =
      __$$ConversationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int discussionId,
      int parentId,
      String topic,
      String imageUrl,
      int createdByContactId,
      ConversationType type,
      ConversationCategoryType categoryType,
      int referenceId,
      Message? lastMessage,
      DateTime? lastMessageAt,
      int unreadCount,
      User? targetUser,
      @JsonKey(includeFromJson: false, includeToJson: false) bool isOnline});

  @override
  $MessageCopyWith<$Res>? get lastMessage;
  @override
  $UserCopyWith<$Res>? get targetUser;
}

/// @nodoc
class __$$ConversationImplCopyWithImpl<$Res>
    extends _$ConversationCopyWithImpl<$Res, _$ConversationImpl>
    implements _$$ConversationImplCopyWith<$Res> {
  __$$ConversationImplCopyWithImpl(
      _$ConversationImpl _value, $Res Function(_$ConversationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discussionId = null,
    Object? parentId = null,
    Object? topic = null,
    Object? imageUrl = null,
    Object? createdByContactId = null,
    Object? type = null,
    Object? categoryType = null,
    Object? referenceId = null,
    Object? lastMessage = freezed,
    Object? lastMessageAt = freezed,
    Object? unreadCount = null,
    Object? targetUser = freezed,
    Object? isOnline = null,
  }) {
    return _then(_$ConversationImpl(
      discussionId: null == discussionId
          ? _value.discussionId
          : discussionId // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdByContactId: null == createdByContactId
          ? _value.createdByContactId
          : createdByContactId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ConversationType,
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as ConversationCategoryType,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as int,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      lastMessageAt: freezed == lastMessageAt
          ? _value.lastMessageAt
          : lastMessageAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      targetUser: freezed == targetUser
          ? _value.targetUser
          : targetUser // ignore: cast_nullable_to_non_nullable
              as User?,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationImpl extends _Conversation {
  _$ConversationImpl(
      {required this.discussionId,
      required this.parentId,
      required this.topic,
      required this.imageUrl,
      required this.createdByContactId,
      required this.type,
      required this.categoryType,
      required this.referenceId,
      this.lastMessage,
      this.lastMessageAt,
      this.unreadCount = 0,
      this.targetUser,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.isOnline = false})
      : super._();

  factory _$ConversationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationImplFromJson(json);

  @override
  final int discussionId;
  @override
  final int parentId;
  @override
  final String topic;
  @override
  final String imageUrl;
  @override
  final int createdByContactId;
  @override
  final ConversationType type;
  @override
  final ConversationCategoryType categoryType;
  @override
  final int referenceId;
  @override
  final Message? lastMessage;
  @override
  final DateTime? lastMessageAt;
  @override
  @JsonKey()
  final int unreadCount;
// For type: [ConversationType.private] only
  @override
  final User? targetUser;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final bool isOnline;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationImpl &&
            (identical(other.discussionId, discussionId) ||
                other.discussionId == discussionId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.createdByContactId, createdByContactId) ||
                other.createdByContactId == createdByContactId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessageAt, lastMessageAt) ||
                other.lastMessageAt == lastMessageAt) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.targetUser, targetUser) ||
                other.targetUser == targetUser) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      discussionId,
      parentId,
      topic,
      imageUrl,
      createdByContactId,
      type,
      categoryType,
      referenceId,
      lastMessage,
      lastMessageAt,
      unreadCount,
      targetUser,
      isOnline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationImplCopyWith<_$ConversationImpl> get copyWith =>
      __$$ConversationImplCopyWithImpl<_$ConversationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationImplToJson(
      this,
    );
  }
}

abstract class _Conversation extends Conversation {
  factory _Conversation(
      {required final int discussionId,
      required final int parentId,
      required final String topic,
      required final String imageUrl,
      required final int createdByContactId,
      required final ConversationType type,
      required final ConversationCategoryType categoryType,
      required final int referenceId,
      final Message? lastMessage,
      final DateTime? lastMessageAt,
      final int unreadCount,
      final User? targetUser,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final bool isOnline}) = _$ConversationImpl;
  _Conversation._() : super._();

  factory _Conversation.fromJson(Map<String, dynamic> json) =
      _$ConversationImpl.fromJson;

  @override
  int get discussionId;
  @override
  int get parentId;
  @override
  String get topic;
  @override
  String get imageUrl;
  @override
  int get createdByContactId;
  @override
  ConversationType get type;
  @override
  ConversationCategoryType get categoryType;
  @override
  int get referenceId;
  @override
  Message? get lastMessage;
  @override
  DateTime? get lastMessageAt;
  @override
  int get unreadCount;
  @override // For type: [ConversationType.private] only
  User? get targetUser;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool get isOnline;
  @override
  @JsonKey(ignore: true)
  _$$ConversationImplCopyWith<_$ConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
