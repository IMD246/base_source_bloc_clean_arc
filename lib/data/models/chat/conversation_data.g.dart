// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationDataImpl _$$ConversationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationDataImpl(
      discussionMemberStatusID: json['discussionMemberStatusID'] as int?,
      parentDiscussionID: json['parentDiscussionID'] as int?,
      discussionID: json['discussionID'] as int?,
      profilePhoto: json['profilePhoto'] as String?,
      discussionTopic: json['discussionTopic'] as String?,
      discussionCategoryID: json['discussionCategoryID'] as int?,
      latestMessage: json['latestMessage'] as String?,
      discussionCreatedByContactID:
          json['discussionCreatedByContactID'] as int?,
      firstName: json['firstName'] as String?,
      surname: json['surname'] as String?,
      dateCreated: json['dateCreated'] as String?,
      discussionBody: json['discussionBody'] as String?,
      discussionBanner: json['discussionBanner'] as String?,
      unreadMessageCount: json['unreadMessageCount'] as int?,
      targetContactID: json['targetContactID'] as int?,
      referenceID: json['referenceID'] as int?,
      discussionValue: json['discussionValue'] as int?,
      senderName: json['senderName'] as String?,
    );

Map<String, dynamic> _$$ConversationDataImplToJson(
        _$ConversationDataImpl instance) =>
    <String, dynamic>{
      'discussionMemberStatusID': instance.discussionMemberStatusID,
      'parentDiscussionID': instance.parentDiscussionID,
      'discussionID': instance.discussionID,
      'profilePhoto': instance.profilePhoto,
      'discussionTopic': instance.discussionTopic,
      'discussionCategoryID': instance.discussionCategoryID,
      'latestMessage': instance.latestMessage,
      'discussionCreatedByContactID': instance.discussionCreatedByContactID,
      'firstName': instance.firstName,
      'surname': instance.surname,
      'dateCreated': instance.dateCreated,
      'discussionBody': instance.discussionBody,
      'discussionBanner': instance.discussionBanner,
      'unreadMessageCount': instance.unreadMessageCount,
      'targetContactID': instance.targetContactID,
      'referenceID': instance.referenceID,
      'discussionValue': instance.discussionValue,
      'senderName': instance.senderName,
    };
