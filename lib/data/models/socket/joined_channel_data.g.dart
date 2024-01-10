// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joined_channel_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignalChannelImpl _$$SignalChannelImplFromJson(Map<String, dynamic> json) =>
    _$SignalChannelImpl(
      channelId: json['channelId'] as String,
      connectionId: json['connectionId'] as String,
      userId: json['userId'] as String,
      contactId: json['contactId'] as String,
    );

Map<String, dynamic> _$$SignalChannelImplToJson(_$SignalChannelImpl instance) =>
    <String, dynamic>{
      'channelId': instance.channelId,
      'connectionId': instance.connectionId,
      'userId': instance.userId,
      'contactId': instance.contactId,
    };
