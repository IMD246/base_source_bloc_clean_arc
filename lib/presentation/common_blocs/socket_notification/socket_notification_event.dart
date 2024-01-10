part of 'socket_notification_bloc.dart';

class SocketNotificationEvent extends BaseEvent {}

class SocketNotificationInitialEvent extends SocketNotificationEvent {}

@freezed
class ReceivedUnReadCountNotificationEvent extends SocketNotificationEvent with _$ReceivedUnReadCountNotificationEvent {
  const factory ReceivedUnReadCountNotificationEvent({
    required SocketNotification notification,
  }) = _ReceivedUnReadCountNotificationEvent;
}

@freezed
class ReceivedDmCreatedNotificationEvent extends SocketNotificationEvent with _$ReceivedDmCreatedNotificationEvent {
  const factory ReceivedDmCreatedNotificationEvent({
    required SocketNotification notification,
  }) = _ReceivedDmCreatedNotificationEvent;
}

@freezed
class ReadConversation extends SocketNotificationEvent with _$ReadConversation {
  const factory ReadConversation({
    required int parentDiscussionId,
  }) = _ReadConversation;
}
