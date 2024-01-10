part of 'chat_options_bloc.dart';

@freezed
class ChatOptionsState extends BaseState with _$ChatOptionsState {
  const ChatOptionsState._();

  const factory ChatOptionsState({
    @Default(false) bool hasDeleted,
  }) = _ChatOptionsState;
}
