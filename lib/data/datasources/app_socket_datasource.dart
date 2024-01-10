import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:signalr_core/signalr_core.dart';

import '../../core/constants/constants.dart';
import '../../core/mixins/mixins.dart';
import 'gateway/api/api.dart';

@lazySingleton
class AppSocketDataSource with LogMixin {
  AppSocketDataSource(this._signalRClient);

  final SignalRClient _signalRClient;

  late HubConnection _connection;

  Timer? _reJoinTimer;

  Future<void> joinChannel(int discussionId) async {
    try {
      _connection = await _signalRClient.getConnection();

      final channel = 'chat$discussionId';
      final dynamic signal = await _connection.invoke('joinChannel', args: <dynamic>[channel]);
      logInfo('joined channel: $signal');
    } catch (e) {
      logError(e);
      _reJoinTimer = Timer(
        ApiDurationConstants.reJoinChannelDuration,
        () => joinChannel(discussionId),
      );
    }
  }

  void leaveChannel(int discussionId) {
    try {
      _reJoinTimer?.cancel();

      final channel = 'chat$discussionId';
      final onlineClients = _connection.invoke('leaveChannel', args: <dynamic>[channel]);
      logInfo('left channel: $onlineClients');
    } catch (e) {
      logError('failed to leave channel: $e');
    }
  }

  Stream<dynamic> _messageIncomingStream() async* {
    final streamController = StreamController<dynamic>();

    _connection.onclose((error) => streamController.close());

    _connection.on('transferMessageIncoming', (arguments) {
      logDebug(arguments);

      streamController.add(arguments);
    });

    yield* streamController.stream;
  }

  Stream onReceivedMessage() async* {
    _messageIncomingStream().listen((dynamic event) {});
  }

  Stream onUpdatedMessage() async* {
    _messageIncomingStream().listen((dynamic event) {});
  }

  Stream onDeletedMessage() async* {
    _messageIncomingStream().listen((dynamic event) {});
  }

  Stream onTyping() async* {
    _messageIncomingStream().listen((dynamic event) {});
  }

  void disconnect() {
    _connection.stop();
  }
}
