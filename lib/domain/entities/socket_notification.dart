// ignore_for_file: depend_on_referenced_packages

import 'package:equatable/equatable.dart';

import '../domain.dart';

class SocketNotification extends Equatable {
  const SocketNotification({
    required this.id,
    required this.senderId,
    required this.receivers,
    this.conversation,
  });

  final String id;
  final int senderId;
  final List<int> receivers;
  final Conversation? conversation;

  @override
  List<Object?> get props => [id, senderId, receivers, conversation];
}
