// [{channelId: chat448990, connectionId: mizSspws0rZpv571IYS2hg, userId: 8966, contactId: 49592}, {channelId: chat448990, connectionId: fVoK4pZeQxTmexeKgiR13w, userId: 9061, contactId: 49782}]

import 'package:freezed_annotation/freezed_annotation.dart';
part 'joined_channel_data.freezed.dart';
part 'joined_channel_data.g.dart';

@freezed
class SignalChannel with _$SignalChannel {
  const factory SignalChannel({
    required String channelId,
    required String connectionId,
    required String userId,
    required String contactId,
  }) = _SignalChannel;

  factory SignalChannel.fromJson(Map<String, dynamic> json) => _$SignalChannelFromJson(json);
}
