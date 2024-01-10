/*enum SignalNotificationTypes {
  enrollmentNewMessage = 'enrollmentNewMessage',
  chatNewMessage = 'chatNewMessage',
  groupMessage = 'groupMessage',
  taskRequests = 'taskRequests',
  taskNewMessage = 'taskNewMessage',
  connectRequest = 'connectRequest',
  groupConnectRequest = 'groupConnectRequest',
  eventRequest = 'eventRequest',
  applicantRequest = 'applicantRequest',
  other = 'other',
  taskUnreadMessage = 'taskUnreadMessage',
  discussionNotification = 'discussionNotification',
  discussionNotificationUpdate = 'discussionNotificationUpdate',
  discussionNotificationDelete = 'discussionNotificationDelete',
  alert = 'alert',
  unreadCount = 'unreadCount',
  dmCreated = 'dmCreated'
}
*/

enum SignalNotificationType {
  enrollmentNewMessage,
  chatNewMessage,
  groupMessage,
  taskRequests,
  taskNewMessage,
  connectRequest,
  groupConnectRequest,
  eventRequest,
  applicantRequest,
  other,
  taskUnreadMessage,
  discussionNotification,
  discussionNotificationUpdate,
  discussionNotificationDelete,
  alert,
  unreadCount,
  dmCreated
}

extension SignalNotificationTypesExtension on SignalNotificationType {
  String get name {
    switch (this) {
      case SignalNotificationType.enrollmentNewMessage:
        return 'enrollmentNewMessage';
      case SignalNotificationType.chatNewMessage:
        return 'chatNewMessage';
      case SignalNotificationType.groupMessage:
        return 'groupMessage';
      case SignalNotificationType.taskRequests:
        return 'taskRequests';
      case SignalNotificationType.taskNewMessage:
        return 'taskNewMessage';
      case SignalNotificationType.connectRequest:
        return 'connectRequest';
      case SignalNotificationType.groupConnectRequest:
        return 'groupConnectRequest';
      case SignalNotificationType.eventRequest:
        return 'eventRequest';
      case SignalNotificationType.applicantRequest:
        return 'applicantRequest';
      case SignalNotificationType.other:
        return 'other';
      case SignalNotificationType.taskUnreadMessage:
        return 'taskUnreadMessage';
      case SignalNotificationType.discussionNotification:
        return 'discussionNotification';
      case SignalNotificationType.discussionNotificationUpdate:
        return 'discussionNotificationUpdate';
      case SignalNotificationType.discussionNotificationDelete:
        return 'discussionNotificationDelete';
      case SignalNotificationType.alert:
        return 'alert';
      case SignalNotificationType.unreadCount:
        return 'unreadCount';
      case SignalNotificationType.dmCreated:
        return 'dmCreated';
    }
  }
}
