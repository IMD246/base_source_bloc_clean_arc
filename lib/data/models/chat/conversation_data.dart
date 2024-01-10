import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/parse_utils.dart';
import '../../../domain/entities/entities.dart';
import '../base/entity_mappable.dart';
import '../helper/avnon_datasource_helper.dart';
import '../models.dart';

part 'conversation_data.freezed.dart';
part 'conversation_data.g.dart';

@freezed
class ConversationData with _$ConversationData implements EntityMappable<Conversation> {
  const ConversationData._();

  const factory ConversationData({
    int? discussionMemberStatusID,
    int? parentDiscussionID,
    int? discussionID,
    String? profilePhoto,
    String? discussionTopic,
    int? discussionCategoryID,
    String? latestMessage,
    int? discussionCreatedByContactID,
    String? firstName,
    String? surname,
    String? dateCreated,
    String? discussionBody,
    String? discussionBanner,
    int? unreadMessageCount,
    int? targetContactID,
    int? referenceID,
    int? discussionValue,
    String? senderName,
  }) = _ConversationData;

  factory ConversationData.fromJson(Map<String, dynamic> json) => _$ConversationDataFromJson(json);

  @override
  Conversation toEntity({bool useBodyAsLastMessage = false}) {
    final conversationType = _parseConversationType(discussionCategoryID!);
    final isDirectMessage = conversationType == ConversationType.private;

    return Conversation(
      discussionId: discussionID!,
      parentId: parentDiscussionID ?? 0,
      topic: (isDirectMessage ? senderName : discussionTopic) ?? '',
      imageUrl: profilePhoto != null ? AvnonDataSourceHelper.addBlobStoragePrefix(profilePhoto!) : '',
      createdByContactId: discussionCreatedByContactID!,
      type: conversationType,
      categoryType: ConversationCategoryType.values.firstWhere((category) => category.value == discussionCategoryID!),
      referenceId: referenceID ?? 0,
      targetUser: isDirectMessage
          ? User(
              contactID: targetContactID,
              profilePhoto: profilePhoto != null ? AvnonDataSourceHelper.addBlobStoragePrefix(profilePhoto!) : '',
              sortName: senderName,
            )
          : null,
      lastMessage: latestMessage != null
          ? Message(
              id: 0,
              content: ParseUtils.cleanHtmlTags(latestMessage ?? ''),
              sender: User(contactID: -1, sortName: senderName),
            )
          : useBodyAsLastMessage
              ? Message(
                  id: 0,
                  content: ParseUtils.cleanHtmlTags(discussionBody ?? ''),
                  sender: User(contactID: -1, sortName: senderName),
                )
              : null,
      unreadCount: unreadMessageCount ?? 0,
      lastMessageAt: dateCreated != null ? ParseUtils.tryParseUtc(dateCreated!) : null,
    );
  }

  ConversationType _parseConversationType(int discussionCategoryID) {
    final discussionCategory = DiscussionCategory.values.firstWhere((category) => category.id == discussionCategoryID);

    switch (discussionCategory) {
      case DiscussionCategory.directMessage:
        return ConversationType.private;
      case DiscussionCategory.groupMessage:
      case DiscussionCategory.newGroup:
        return ConversationType.group;
      default:
        return ConversationType.private;
    }
  }
}
