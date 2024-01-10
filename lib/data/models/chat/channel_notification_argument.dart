// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'channel_notifications_enum.dart';

class ChannelNotificationArgument extends Equatable {
  const ChannelNotificationArgument(this.connectionId, this.channel, this.data);

  factory ChannelNotificationArgument.fromArgument(List<dynamic> arguments) {
    return ChannelNotificationArgument(
      arguments.first,
      arguments[1],
      ChannelNotificationData.fromData(jsonDecode(arguments[2])),
    );
  }

  final String connectionId;
  final String channel;
  final ChannelNotificationData data;

  @override
  List<Object?> get props => [connectionId, channel, data];

  @override
  String toString() => 'ChannelArgument(connectionId: $connectionId, channel: $channel, data: $data)';
}

class ChannelNotificationData extends Equatable {
  const ChannelNotificationData({
    required this.type,
    required this.data,
    required this.senderId,
    required this.receivers,
    required this.reference,
  });

  factory ChannelNotificationData.fromData(Map<String, dynamic> data) {
    return ChannelNotificationData(
      type: SignalNotificationType.values.firstWhere((event) => event.name == data['notificationType']),
      data: data['data'] as Map<String, dynamic>,
      senderId: data['senderId'] as String,
      receivers: (data['receivers'] as List<dynamic>).cast<String>(),
      reference: data['reference'] as String,
    );
  }

  final SignalNotificationType type;
  final Map<String, dynamic> data;
  final String senderId;
  final List<String> receivers;
  final String reference;

  @override
  List<Object?> get props => [type, data];
}
