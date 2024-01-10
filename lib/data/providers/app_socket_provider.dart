import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:signalr_core/signalr_core.dart';

import '../../core/constants/duration_constants.dart';
import '../../core/mixins/mixins.dart';
import '../datasources/gateway/api/clients/socket/signalr_client.dart';
import '../models/socket/socket.dart';

const dashboardChannel = 'dashboard';

@lazySingleton
class AppSocketProvider with LogMixin {
  AppSocketProvider(this._signalRClient);

  final SignalRClient _signalRClient;

  late HubConnection _connection;

  final PublishSubject<ChannelMessageData> _messageIncomingStream = PublishSubject();
  final PublishSubject<ChannelNotificationData> _messageNotificationStream = PublishSubject();
  Timer? _reJoinTimer;
  Completer<void>? _establishConnectionCompleter;

  final _channelSignalsMap = <String, List<SignalChannel>>{};
  final _channelSignalStreamMap = <String, ReplaySubject<List<SignalChannel>>>{};

  Stream<ChannelMessageData> get messageIncomingStream => _messageIncomingStream.stream;
  Stream<ChannelNotificationData> get messageNotificationStream => _messageNotificationStream.stream;

  Future<void> establishConnection() async {
    _establishConnectionCompleter = Completer();
    _connection = await _signalRClient.getConnection();
    _establishConnectionCompleter!.complete();
    await joinChannel(dashboardChannel);

    _connection.onclose((exception) {
      _closeAllStreams();
    });

    _listenEvents();
  }

  void _listenEvents() {
    // Listen for new users joined to channel
    _connection.on('joinChannelIncoming', (arguments) {
      try {
        if (arguments != null) {
          final channel = arguments.first as String;
          final channelSignals = (arguments[1] as List).map((dynamic e) => SignalChannel.fromJson(e)).toList();

          for (final signal in channelSignals) {
            _onChannelJoined(channel, signal);
          }
        }
      } catch (e) {
        logError('Failed to listen transferMessageIncoming events', e);
      }
    });

    // Listen for online clients in channel
    _connection.on('leaveChannelIncoming', (arguments) {
      try {
        if (arguments != null) {
          final channel = arguments.first as String;
          final channelSignals = (arguments[1] as List).map((dynamic e) => SignalChannel.fromJson(e)).toList();

          for (final signal in channelSignals) {
            _onChannelLeft(channel, signal);
          }
        }
      } catch (e) {
        logError('Failed to listen transferMessageIncoming events', e);
      }
    });

    // Listen for incoming messages
    _connection.on('transferMessageIncoming', (arguments) {
      try {
        if (arguments != null) {
          final chanelArgument = ChannelArgument.fromArgument(arguments);

          // handle notification for mention message
          if (chanelArgument.channel == dashboardChannel) {
            _messageNotificationStream.add(chanelArgument.data as ChannelNotificationData);
          } else {
            _messageIncomingStream.add(chanelArgument.data as ChannelMessageData);
          }
        }
      } catch (e) {
        logError('Failed to listen transferMessageIncoming events', e);
      }
    });
  }

  void _onChannelJoined(String channel, SignalChannel signalChannel) {
    final channelSignals = _channelSignalsMap[channel] ?? [];
    channelSignals.add(signalChannel);

    _updateChannelSignalsMap(channel, channelSignals);
  }

  void _onChannelLeft(String channel, SignalChannel signalChannel) {
    final channelSignals = _channelSignalsMap[channel]!;
    channelSignals.removeWhere((element) => element.connectionId == signalChannel.connectionId);

    _updateChannelSignalsMap(channel, channelSignals);
  }

  List<String> _getConnectionIds(String channel) {
    return _channelSignalsMap[channel]!.map((e) => e.connectionId).toList();
  }

  List<int> getChannelContactId(String channel) {
    return _channelSignalsMap[channel]!.map((e) => int.parse(e.contactId)).toList();
  }

  Stream<List<int>> onlineConnectionContactIdStream(String channel) {
    return _channelSignalStreamMap[channel]!.map((signals) => signals.map((e) => int.parse(e.contactId)).toList());
  }

  Future<void> joinChannel(String channel) async {
    try {
      _reJoinTimer?.cancel();

      // join first and then update the map
      _updateChannelSignalsMap(channel, []);

      final List<dynamic> signal = await _invoke('joinChannel', <dynamic>[channel]);
      logInfo('Joined channel: $channel - $signal');

      final channelSignals = signal.map((dynamic e) => SignalChannel.fromJson(e)).toList();
      _updateChannelSignalsMap(channel, channelSignals);
    } catch (e) {
      logError('Failed to join channel', e);
      _reJoinTimer = Timer(
        ApiDurationConstants.reJoinChannelDuration,
        () => joinChannel(channel),
      );
    }
  }

  void _updateChannelSignalsMap(String channel, List<SignalChannel> joinedChannelDataList) {
    _channelSignalsMap[channel] = joinedChannelDataList;

    if (_channelSignalStreamMap[channel] == null) {
      _channelSignalStreamMap[channel] = ReplaySubject<List<SignalChannel>>()..add(joinedChannelDataList);
    } else {
      _channelSignalStreamMap[channel]!.add(joinedChannelDataList);
    }
  }

  Future<void> leaveChannel(String channel) async {
    try {
      final List<dynamic> onlineClients = await _invoke('leaveChannel', <dynamic>[channel, null]);

      final joinedChannelDataList = onlineClients.map((dynamic e) => SignalChannel.fromJson(e)).toList();
      _updateChannelSignalsMap(channel, joinedChannelDataList);
      logInfo('Left channel: $onlineClients');
    } catch (e) {
      logError('Failed to leave channel', e);
    }
  }

  Future<void> transferMessage(String channel, dynamic data) async {
    try {
      final connections = _getConnectionIds(channel);
      await _invoke('transferMessage', <dynamic>[channel, jsonEncode(data), connections]);

      logInfo('Transfer message: $channel - $data');
    } catch (e) {
      logError('Failed to transfer message', e);
    }
  }

  Future<dynamic> _invoke(String methodName, List<dynamic>? args) async {
    if (_establishConnectionCompleter != null && !_establishConnectionCompleter!.isCompleted) {
      await _establishConnectionCompleter!.future;
    }

    try {
      return await _connection.invoke(methodName, args: args);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> closeConnection() async {
    if (_signalRClient.isConnected) {
      _leaveAllChannels();
      _clearTimer();
      _closeAllStreams();

      // return _connection.stop();
    }
  }

  void _clearTimer() {
    _reJoinTimer?.cancel();
  }

  void _closeAllStreams() {
    _messageIncomingStream.close();
    _messageNotificationStream.close();

    for (final stream in _channelSignalStreamMap.values) {
      stream.close();
    }
  }

  void _leaveAllChannels() {
    for (final channel in _channelSignalsMap.keys) {
      leaveChannel(channel);
    }
  }
}
