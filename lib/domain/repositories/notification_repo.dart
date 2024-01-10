import '../entities/socket_notification.dart';

abstract class NotificationRepository {
  Stream<SocketNotification> onReceivedUnreadCountSocketNotification();
  Stream<SocketNotification> onReceivedDmCreatedSocketNotification();
}
