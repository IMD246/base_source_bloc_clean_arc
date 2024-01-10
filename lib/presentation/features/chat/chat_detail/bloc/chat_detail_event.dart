part of 'chat_detail_bloc.dart';

class ChatDetailEvent extends BaseEvent {}

@freezed
class ChatDetailInitiated extends ChatDetailEvent with _$ChatDetailInitiated {
  const factory ChatDetailInitiated() = _ChatDetailInitiated;
}

@freezed
class GetMessages extends ChatDetailEvent with _$GetMessages {
  const factory GetMessages({required bool isRefresh}) = _GetMessages;
}

@freezed
class LoadMoreMessages extends ChatDetailEvent with _$LoadMoreMessages {
  const factory LoadMoreMessages() = _LoadMoreMessages;
}

@freezed
class SendMessage extends ChatDetailEvent with _$SendMessage {
  const factory SendMessage(String content) = _SendMessage;
}

@freezed
class DeleteMessage extends ChatDetailEvent with _$DeleteMessage {
  const factory DeleteMessage(Message message) = _DeleteMessage;
}

@freezed
class ActiveEditingMessage extends ChatDetailEvent with _$ActiveEditingMessage {
  const factory ActiveEditingMessage(Message? message) = _ActiveEditingMessage;
}

@freezed
class UpdateMessage extends ChatDetailEvent with _$UpdateMessage {
  const factory UpdateMessage(Message message) = _UpdateMessage;
}

@freezed
class ActiveToReplyMessage extends ChatDetailEvent with _$ActiveToReplyMessage {
  const factory ActiveToReplyMessage(Message? message) = _ActiveToReplyMessage;
}

@freezed
class ReactMessage extends ChatDetailEvent with _$ReactMessage {
  const factory ReactMessage(Message message, ReactionType reactionType) = _ReactMessage;
}

@freezed
class RemoveReaction extends ChatDetailEvent with _$RemoveReaction {
  const factory RemoveReaction(Message message, Reaction reaction) = _RemoveReaction;
}

@freezed
class AttachDocuments extends ChatDetailEvent with _$AttachDocuments {
  const factory AttachDocuments(List<File> files) = _AttachDocuments;
}

@freezed
class RemoveDocument extends ChatDetailEvent with _$RemoveDocument {
  const factory RemoveDocument(Document document) = _RemoveDocument;
}

@freezed
class SendTypingIndicator extends ChatDetailEvent with _$SendTypingIndicator {
  const factory SendTypingIndicator() = _SendTypingIndicator;
}

@freezed
class SetTypingIndicator extends ChatDetailEvent with _$SetTypingIndicator {
  const factory SetTypingIndicator(TypingIndicator typingIndicator) = _SetTypingIndicator;
}

@freezed
class NewMessageReceived extends ChatDetailEvent with _$NewMessageReceived {
  const factory NewMessageReceived(Message message) = _NewMessageReceived;
}

@freezed
class MessageEdited extends ChatDetailEvent with _$MessageEdited {
  const factory MessageEdited(Message message) = _MessageEdited;
}

@freezed
class MessageDeleted extends ChatDetailEvent with _$MessageDeleted {
  const factory MessageDeleted(int deletedMessageId) = _MessageDeleted;
}

@freezed
class AppResumed extends ChatDetailEvent with _$AppResumed {
  const factory AppResumed() = _AppResumed;
}

@freezed
class AppSuspended extends ChatDetailEvent with _$AppSuspended {
  const factory AppSuspended() = _AppSuspended;
}
