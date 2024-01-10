import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/parse_utils.dart';
import '../../../domain/entities/entities.dart';
import '../base/entity_mappable.dart';
import '../helper/avnon_datasource_helper.dart';
import 'document_data.dart';

part 'message_data.freezed.dart';
part 'message_data.g.dart';

@freezed
class MessageData with _$MessageData implements EntityMappable<Message> {
  const MessageData._();

  const factory MessageData({
    int? discussionID,
    int? discussionCategoryID,
    int? referenceID,
    bool? isDirectMessage,
    String? dateCreated,
    int? discussionCreatedByContactID,
    int? unread,
    String? discussionTopic,
    bool? isAdmin,
    String? firstName,
    String? surname,
    int? discussionStatusID,
    String? profilePhoto,
    String? edited,
    String? pinned,
    int? parentDiscussionID,
    String? discussionBody,
    String? taskTitle,
    String? endDate,
    int? taskID,
    int? unreadMessageCount,
    int? replyDiscussionID,
    String? replyDiscussion,
    int? comments,
    int? likes,
    int? likeID,
    int? discussionValue,
    bool? isFavourite,
    int? taskOwnerID,
    int? subReferenceID,
    int? rssid,
    String? authorName,
    String? authorWebaddress,
    String? externalBannerImage,
    String? latestMessage,
    String? activityDate,
    @_DocumentsConverter() @Default(<DocumentData>[]) List<DocumentData> documents,
  }) = _MessageData;

  factory MessageData.fromJson(Map<String, dynamic> json) => _$MessageDataFromJson(json);

  factory MessageData.fromJsonSentMessage(Map<String, dynamic> json) {
    final message = _$MessageDataFromJson(json);

    return message.copyWith(
      discussionID: json['inOut_DiscussionID'] as int?,
    );
  }

  @override
  Message toEntity() {
    return Message(
      id: discussionID ?? -1,
      content: ParseUtils.cleanHtmlTags(discussionBody ?? ''),
      sender: User(
        contactID: discussionCreatedByContactID!,
        firstName: firstName,
        surname: surname,
        profilePhoto: profilePhoto != null ? AvnonDataSourceHelper.addBlobStoragePrefix(profilePhoto!) : '',
      ),
      createdAt: dateCreated != null ? ParseUtils.tryParseUtc(dateCreated!) : null,
      parentMessage: replyDiscussionID != null
          ? Message(
              id: replyDiscussionID!,
              content: '',
              sender: const User(id: -1),
            )
          : null,
      documents: documents.map((e) => e.toEntity()).toList(),
    );
  }
}

class _DocumentsConverter implements JsonConverter<List<DocumentData>, List<dynamic>> {
  const _DocumentsConverter();

  @override
  List<DocumentData> fromJson(List<dynamic> documents) {
    if (documents.isEmpty) {
      return [];
    }

    return documents.map((dynamic document) => DocumentData.fromJson(document)).toList();
  }

  @override
  List<Map<String, dynamic>> toJson(List<DocumentData> object) {
    return [];
  }
}
