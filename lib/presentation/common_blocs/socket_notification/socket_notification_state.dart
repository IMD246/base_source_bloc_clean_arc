part of 'socket_notification_bloc.dart';

@freezed
class SocketNotificationState extends BaseState with _$SocketNotificationState {
  const SocketNotificationState._();

  const factory SocketNotificationState({
    @Default([]) List<SocketNotification> notifications,
    @Default([]) List<Conversation> unreadConversations,
  }) = _SocketNotificationState;

  int get unreadCount =>
      unreadConversations.fold<int>(0, (previousValue, conversation) => previousValue + conversation.unreadCount);
}
