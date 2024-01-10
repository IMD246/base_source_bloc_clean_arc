// ignore_for_file: invalid_annotation_target

part of 'chat_detail_bloc.dart';

@freezed
class ChatDetailState extends BaseState with _$ChatDetailState {
  const ChatDetailState._();

  const factory ChatDetailState({
    required PagedList<Message> pagedMessageList,
    @Default(false) bool isLoading,
    // For message input
    Message? editingMessage,
    @Default(<Document>[]) List<Document> documents,
    Message? toReplyMessage,
    TypingIndicator? typingIndicator,
  }) = _ChatDetailState;

  factory ChatDetailState.initial() => ChatDetailState(pagedMessageList: PagedList.initial());

  List<Message> get messages => pagedMessageList.items;

  bool get hasNext => pagedMessageList.hasNext;

  ChatDetailState replaceAllMessages(List<Message> messages) {
    final newPagedList = pagedMessageList.replaceAll(messages);

    return copyWith(pagedMessageList: newPagedList);
  }
}
