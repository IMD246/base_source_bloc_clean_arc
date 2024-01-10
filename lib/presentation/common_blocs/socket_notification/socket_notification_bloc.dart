import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/domain.dart';
import '../../base/bloc/base_bloc.dart';

part 'socket_notification_bloc.freezed.dart';
part 'socket_notification_event.dart';
part 'socket_notification_state.dart';

@singleton
class SocketNotificationBloc extends BaseBloc<SocketNotificationEvent, SocketNotificationState> {
  SocketNotificationBloc(this._notificationRepository) : super(const SocketNotificationState()) {
    on<SocketNotificationInitialEvent>(onInitial);
    on<ReceivedUnReadCountNotificationEvent>(onUnreadNotification);
    on<ReceivedDmCreatedNotificationEvent>(onDmCreatedNotification);
    on<ReadConversation>(_onReadConversation);
  }

  final NotificationRepository _notificationRepository;

  FutureOr<void> onInitial(SocketNotificationInitialEvent event, Emitter<SocketNotificationState> emit) {
    addAutoDisposeItem(_notificationRepository.onReceivedUnreadCountSocketNotification().listen((notification) {
      add(ReceivedUnReadCountNotificationEvent(notification: notification));
    }));
    addAutoDisposeItem(_notificationRepository.onReceivedDmCreatedSocketNotification().listen((notification) {
      add(ReceivedUnReadCountNotificationEvent(notification: notification));
    }));
  }

  Future<void> onUnreadNotification(
    ReceivedUnReadCountNotificationEvent event,
    Emitter<SocketNotificationState> emit,
  ) async {
    return runBlocCatching(
      handleLoading: false,
      action: () async {
        if (state.notifications.contains(event.notification)) {
          return;
        }

        if (!event.notification.receivers.contains(currentUser.contactID) ||
            event.notification.senderId == currentUser.contactID) {
          return;
        }

        emit(state.copyWith(notifications: [...state.notifications, event.notification]));

        if (event.notification.conversation != null) {
          emit(state.copyWith(unreadConversations: [
            ...state.unreadConversations,
            // increment unread count manually cause the socket notification doesn't have unread count
            event.notification.conversation!.copyWith(unreadCount: 1),
          ]));
        }
      },
    );
  }

  FutureOr<void> onDmCreatedNotification(
    ReceivedDmCreatedNotificationEvent event,
    Emitter<SocketNotificationState> emit,
  ) {
    logError('Unimplemented');
  }

  FutureOr<void> _onReadConversation(ReadConversation event, Emitter<SocketNotificationState> emit) {
    final unreadConversations =
        state.unreadConversations.where((conversation) => conversation.parentId != event.parentDiscussionId).toList();

    emit(state.copyWith(unreadConversations: unreadConversations));
  }
}
