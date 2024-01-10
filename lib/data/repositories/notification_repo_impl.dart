import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';
import '../models/chat/channel_notifications_enum.dart';
import '../providers/app_socket_provider.dart';

@Injectable(as: NotificationRepository)
class NotificationRepoImpl implements NotificationRepository {
  NotificationRepoImpl(this._appSocketProvider);

  final AppSocketProvider _appSocketProvider;

  Stream<SocketNotification> _listenSocket(SignalNotificationType type) async* {
    await for (final notification
        in _appSocketProvider.messageNotificationStream.where((event) => event.type == type)) {
      yield SocketNotification(
        id: notification.uniqueId,
        senderId: notification.senderId,
        receivers: notification.receivers,
        conversation: notification.discussion?.toEntity(useBodyAsLastMessage: true),
      );
    }
  }

  @override
  Stream<SocketNotification> onReceivedUnreadCountSocketNotification() {
    return _listenSocket(SignalNotificationType.unreadCount);
  }

  @override
  Stream<SocketNotification> onReceivedDmCreatedSocketNotification() {
    return _listenSocket(SignalNotificationType.dmCreated);
  }
}
