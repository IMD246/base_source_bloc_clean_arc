// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain.dart';

part 'conversation.freezed.dart';
part 'conversation.g.dart';

@freezed
class Conversation with _$Conversation {
  const Conversation._();

  factory Conversation({
    required int discussionId,
    required int parentId,
    required String topic,
    required String imageUrl,
    required int createdByContactId,
    required ConversationType type,
    required ConversationCategoryType categoryType,
    required int referenceId,
    Message? lastMessage,
    DateTime? lastMessageAt,
    @Default(0) int unreadCount,
    // For type: [ConversationType.private] only
    User? targetUser,
    @JsonKey(includeFromJson: false, includeToJson: false) @Default(false) bool isOnline,
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, dynamic> json) => _$ConversationFromJson(json);

  bool get isGroup => type == ConversationType.group;
  bool get isDirectMessage => type == ConversationType.private;

  bool isOwner(int contactId) => createdByContactId == contactId;

  @override
  String toString() => 'Conversation(discussionId: $discussionId, topic: $topic, unreadCount: $unreadCount)';
}
