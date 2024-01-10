// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReactionDataImpl _$$ReactionDataImplFromJson(Map<String, dynamic> json) =>
    _$ReactionDataImpl(
      likeID: json['likeID'] as int?,
      emojiRef: json['emojiRef'] as String?,
      contactID: json['contactID'] as int?,
      likeTypeID: json['likeTypeID'] as int?,
      referenceID: json['referenceID'] as int?,
      likeCategoryID: json['likeCategoryID'] as int?,
      firstname: json['firstname'] as String?,
      surname: json['surname'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      dateSubmitted: json['dateSubmitted'] as String?,
      emailAddress: json['emailAddress'] as String?,
      companyName: json['companyName'] as String?,
      headline: json['headline'] as String?,
      followLikeID: json['followLikeID'] as int?,
    );

Map<String, dynamic> _$$ReactionDataImplToJson(_$ReactionDataImpl instance) =>
    <String, dynamic>{
      'likeID': instance.likeID,
      'emojiRef': instance.emojiRef,
      'contactID': instance.contactID,
      'likeTypeID': instance.likeTypeID,
      'referenceID': instance.referenceID,
      'likeCategoryID': instance.likeCategoryID,
      'firstname': instance.firstname,
      'surname': instance.surname,
      'profilePhoto': instance.profilePhoto,
      'dateSubmitted': instance.dateSubmitted,
      'emailAddress': instance.emailAddress,
      'companyName': instance.companyName,
      'headline': instance.headline,
      'followLikeID': instance.followLikeID,
    };
