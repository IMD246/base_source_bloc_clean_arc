part of 'chat_media_bloc.dart';

class ChatMediaEvent extends BaseEvent {}

@freezed
class ChatMediaInitialEvent extends ChatMediaEvent with _$ChatMediaInitialEvent {
  const factory ChatMediaInitialEvent() = _ChatMediaInitialEvent;
}
