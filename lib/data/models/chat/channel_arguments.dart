// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'channel_events_enum.dart';
import 'channel_notifications_enum.dart';
import 'conversation_data.dart';

class ChannelArgument extends Equatable {
  const ChannelArgument(this.connectionId, this.channel, this.data);

  factory ChannelArgument.fromArgument(List<dynamic> arguments) {
    final data = jsonDecode(arguments[2]);

    return ChannelArgument(
      arguments.first,
      arguments[1],
      data['receivers'] == null ? ChannelMessageData.fromData(data) : ChannelNotificationData.fromData(data),
    );
  }

  final String connectionId;
  final String channel;
  final ChannelData data;

  @override
  List<Object?> get props => [connectionId, channel, data];

  @override
  String toString() => 'ChannelArgument(connectionId: $connectionId, channel: $channel, data: $data)';
}

// ========== ChannelData ==========
abstract class ChannelData extends Equatable {
  const ChannelData();
}

class ChannelMessageData extends ChannelData {
  const ChannelMessageData(this.type, this.data);

  factory ChannelMessageData.fromData(Map<String, dynamic> data) {
    return ChannelMessageData(
      ChannelEventType.values.firstWhere((event) => event.name == data['type']),
      data['data'] as Map<String, dynamic>,
    );
  }

  final ChannelEventType type;
  final Map<String, dynamic> data;

  @override
  List<Object?> get props => [type, data];
}

class ChannelNotificationData extends ChannelData {
  const ChannelNotificationData({
    required this.uniqueId,
    required this.type,
    required this.senderId,
    required this.receivers,
    required this.reference,
    this.discussion,
  });

  factory ChannelNotificationData.fromData(Map<String, dynamic> data) {
    return ChannelNotificationData(
      uniqueId: data['uniqueId'],
      type: SignalNotificationType.values.firstWhere((event) => event.name == data['notificationType']),
      discussion:
          data['discussion'] != null ? ConversationData.fromJson(data['discussion'] as Map<String, dynamic>) : null,
      senderId: data['senderId'],
      receivers: (data['receivers'] as List<dynamic>).cast<int>(),
      reference: data['reference'],
    );
  }

  final String uniqueId;
  final SignalNotificationType type;
  final ConversationData? discussion;
  final int senderId;
  final List<int> receivers;
  final int reference;

  @override
  List<Object?> get props => [type, discussion];
}

// ========== InvokeChannelArgument ==========

class InvokeChannelArgument {
  const InvokeChannelArgument(this.type, this.data);

  final ChannelEventType type;
  final Map<String, dynamic> data;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.name,
        'data': data,
      };

  @override
  String toString() => 'InvokeChannelArgument(type: $type, data: $data)';
}
