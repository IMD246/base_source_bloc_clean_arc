part of 'chat_media_bloc.dart';

@freezed
class ChatMediaState extends BaseState with _$ChatMediaState {
  const factory ChatMediaState({
    @Default(<Document>[]) List<Document> documents,
    @Default(false) bool isLoading,
  }) = _ChatMediaState;
}
