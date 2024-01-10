// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageDataImpl _$$MessageDataImplFromJson(Map<String, dynamic> json) =>
    _$MessageDataImpl(
      discussionID: json['discussionID'] as int?,
      discussionCategoryID: json['discussionCategoryID'] as int?,
      referenceID: json['referenceID'] as int?,
      isDirectMessage: json['isDirectMessage'] as bool?,
      dateCreated: json['dateCreated'] as String?,
      discussionCreatedByContactID:
          json['discussionCreatedByContactID'] as int?,
      unread: json['unread'] as int?,
      discussionTopic: json['discussionTopic'] as String?,
      isAdmin: json['isAdmin'] as bool?,
      firstName: json['firstName'] as String?,
      surname: json['surname'] as String?,
      discussionStatusID: json['discussionStatusID'] as int?,
      profilePhoto: json['profilePhoto'] as String?,
      edited: json['edited'] as String?,
      pinned: json['pinned'] as String?,
      parentDiscussionID: json['parentDiscussionID'] as int?,
      discussionBody: json['discussionBody'] as String?,
      taskTitle: json['taskTitle'] as String?,
      endDate: json['endDate'] as String?,
      taskID: json['taskID'] as int?,
      unreadMessageCount: json['unreadMessageCount'] as int?,
      replyDiscussionID: json['replyDiscussionID'] as int?,
      replyDiscussion: json['replyDiscussion'] as String?,
      comments: json['comments'] as int?,
      likes: json['likes'] as int?,
      likeID: json['likeID'] as int?,
      discussionValue: json['discussionValue'] as int?,
      isFavourite: json['isFavourite'] as bool?,
      taskOwnerID: json['taskOwnerID'] as int?,
      subReferenceID: json['subReferenceID'] as int?,
      rssid: json['rssid'] as int?,
      authorName: json['authorName'] as String?,
      authorWebaddress: json['authorWebaddress'] as String?,
      externalBannerImage: json['externalBannerImage'] as String?,
      latestMessage: json['latestMessage'] as String?,
      activityDate: json['activityDate'] as String?,
      documents: json['documents'] == null
          ? const <DocumentData>[]
          : const _DocumentsConverter().fromJson(json['documents'] as List),
    );

Map<String, dynamic> _$$MessageDataImplToJson(_$MessageDataImpl instance) =>
    <String, dynamic>{
      'discussionID': instance.discussionID,
      'discussionCategoryID': instance.discussionCategoryID,
      'referenceID': instance.referenceID,
      'isDirectMessage': instance.isDirectMessage,
      'dateCreated': instance.dateCreated,
      'discussionCreatedByContactID': instance.discussionCreatedByContactID,
      'unread': instance.unread,
      'discussionTopic': instance.discussionTopic,
      'isAdmin': instance.isAdmin,
      'firstName': instance.firstName,
      'surname': instance.surname,
      'discussionStatusID': instance.discussionStatusID,
      'profilePhoto': instance.profilePhoto,
      'edited': instance.edited,
      'pinned': instance.pinned,
      'parentDiscussionID': instance.parentDiscussionID,
      'discussionBody': instance.discussionBody,
      'taskTitle': instance.taskTitle,
      'endDate': instance.endDate,
      'taskID': instance.taskID,
      'unreadMessageCount': instance.unreadMessageCount,
      'replyDiscussionID': instance.replyDiscussionID,
      'replyDiscussion': instance.replyDiscussion,
      'comments': instance.comments,
      'likes': instance.likes,
      'likeID': instance.likeID,
      'discussionValue': instance.discussionValue,
      'isFavourite': instance.isFavourite,
      'taskOwnerID': instance.taskOwnerID,
      'subReferenceID': instance.subReferenceID,
      'rssid': instance.rssid,
      'authorName': instance.authorName,
      'authorWebaddress': instance.authorWebaddress,
      'externalBannerImage': instance.externalBannerImage,
      'latestMessage': instance.latestMessage,
      'activityDate': instance.activityDate,
      'documents': const _DocumentsConverter().toJson(instance.documents),
    };
