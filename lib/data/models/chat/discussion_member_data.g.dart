// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discussion_member_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscussionMemberDataImpl _$$DiscussionMemberDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscussionMemberDataImpl(
      contactID: json['contactID'] as int?,
      createdUserId: json['createdUserId'] as int?,
      dateAccepted: json['dateAccepted'] as String?,
      discussionID: json['discussionID'] as int?,
      discussionMemberID: json['discussionMemberID'] as int?,
      emailAddress: json['emailAddress'] as String?,
      firstName: json['firstName'] as String?,
      firstname: json['firstname'] as String?,
      hasAccepted: json['hasAccepted'] as bool?,
      companyName: json['companyName'] as String?,
      isAdmin: json['isAdmin'] as bool?,
      lastReadDate: json['lastReadDate'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      surname: json['surname'] as String?,
      unread: json['unread'] as int?,
      userId: json['userId'] as int?,
      selected: json['selected'] as bool?,
      submittedByContactID: json['submittedByContactID'] as int?,
      companyID: json['companyID'] as int?,
      me: json['me'] as bool?,
      discussionMemberStatusID: json['discussionMemberStatusID'] as int?,
      discussionMemberTypeID: json['discussionMemberTypeID'] as int?,
      unreadMessageCount: json['unreadMessageCount'] as int?,
    );

Map<String, dynamic> _$$DiscussionMemberDataImplToJson(
        _$DiscussionMemberDataImpl instance) =>
    <String, dynamic>{
      'contactID': instance.contactID,
      'createdUserId': instance.createdUserId,
      'dateAccepted': instance.dateAccepted,
      'discussionID': instance.discussionID,
      'discussionMemberID': instance.discussionMemberID,
      'emailAddress': instance.emailAddress,
      'firstName': instance.firstName,
      'firstname': instance.firstname,
      'hasAccepted': instance.hasAccepted,
      'companyName': instance.companyName,
      'isAdmin': instance.isAdmin,
      'lastReadDate': instance.lastReadDate,
      'profilePhoto': instance.profilePhoto,
      'surname': instance.surname,
      'unread': instance.unread,
      'userId': instance.userId,
      'selected': instance.selected,
      'submittedByContactID': instance.submittedByContactID,
      'companyID': instance.companyID,
      'me': instance.me,
      'discussionMemberStatusID': instance.discussionMemberStatusID,
      'discussionMemberTypeID': instance.discussionMemberTypeID,
      'unreadMessageCount': instance.unreadMessageCount,
    };
