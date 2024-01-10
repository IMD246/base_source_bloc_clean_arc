import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';
import '../datasources/chat_datasource.dart';
import '../models/chat/chat.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImplement extends ChatRepository {
  ChatRepositoryImplement(this._dataSource);

  final ChatDataSource _dataSource;

  @override
  Future<List<Conversation>> getConversations({
    required int currentUserContactId,
    final int referenceId = 0,
    final int categoryTypeId = 0,
    final int parentDiscussionId = 0,
  }) async {
    final conversations = await _dataSource.getConversations(
      currentUserContactId: currentUserContactId,
      referenceId: referenceId,
      categoryTypeId: categoryTypeId,
      parentDiscussionId: parentDiscussionId,
    );

    final onlineUsersContactId = _dataSource.getOnlineUsers();

    // remove duplicate conversations by discussionID (cause of the API)
    final filteredConversations = conversations.fold<List<Conversation>>(
      <Conversation>[],
      (previousValue, element) {
        if (previousValue.any((e) => e.discussionId == element.discussionID)) {
          return previousValue;
        }

        var conversation = element.toEntity();

        if (conversation.isDirectMessage && onlineUsersContactId.contains(conversation.targetUser!.contactID)) {
          conversation = conversation.copyWith(isOnline: true);
        }

        return [...previousValue, conversation];
      },
    );

    return filteredConversations;
  }

  @override
  Future<List<Message>> getMessages({required int discussionId, required int pageIndex, required int pageSize}) async {
    final messages =
        await _dataSource.getMessages(discussionId: discussionId, pageIndex: pageIndex, pageSize: pageSize);

    return messages.map((e) => e.toEntity()).toList();
  }

  @override
  Future<Message> sendMessage({
    required int discussionId,
    required int currentUserContactId,
    required String content,
    int? parentMessageId,
    bool isDirectMessage = true,
  }) async {
    final message = await _dataSource.sendMessage(
      discussionId: discussionId,
      currentUserContactId: currentUserContactId,
      content: content,
      parentMessageId: parentMessageId,
      isDirectMessage: isDirectMessage,
    );

    return message.toEntity();
  }

  @override
  Future<void> deleteMessage({required conversationId, required int messageId}) {
    return _dataSource.deleteMessage(conversationId, messageId);
  }

  @override
  Future<void> editMessage({required int conversationId, required int messageId, required String editedContent}) async {
    return _dataSource.editMessage(conversationId, messageId, editedContent);
  }

  @override
  Future<String> sendAttachment({
    required int messageId,
    required int currentUserContactId,
    required int conversationId,
    required File file,
  }) {
    return _dataSource.sendAttachment(
      messageId: messageId,
      currentUserContactId: currentUserContactId,
      conversationId: conversationId,
      file: file,
    );
  }

  @override
  Future<void> joinChatChannel(int conversationId) {
    return _dataSource.joinChannel(conversationId);
  }

  @override
  void leaveChatChannel(int conversationId) {
    _dataSource.leaveChannel(conversationId);
  }

  @override
  Stream<Message> onReceivedMessage() {
    return _dataSource.onReceivedMessage().map((messageData) => messageData.toEntity());
  }

  @override
  Stream<int> onMessageDeleted() {
    return _dataSource.onMessageDeleted().map((deletedMessageData) => deletedMessageData.discussionID);
  }

  @override
  Stream<Message> onMessageEdited() {
    return _dataSource.onMessageEdited().map((messageData) => messageData.toEntity());
  }

  @override
  Stream<TypingIndicator> onTyping() {
    return _dataSource.onTyping().map((typingIndicatorData) => typingIndicatorData.toEntity());
  }

  @override
  void sendTypingIndicator({required int conversationId, required User user, required bool isTyping}) {
    _dataSource.sendTypingIndicator(conversationId: conversationId, user: user, isTyping: isTyping);
  }

  @override
  Future<Conversation> createGroupConversation({
    required int currentUserContactId,
    required String name,
  }) async {
    final conversation = await _dataSource.createConversation(
      currentUserContactId: currentUserContactId,
      category: DiscussionCategory.newGroup,
      name: name,
    );

    return conversation.toEntity();
  }

  @override
  Future<Conversation> createPrivateConversation({
    required int currentUserContactId,
  }) async {
    final conversation = await _dataSource.createConversation(
      currentUserContactId: currentUserContactId,
      category: DiscussionCategory.directMessage,
    );

    return conversation.toEntity();
  }

  @override
  Future<void> addMemberToConversation({
    required int conversationId,
    required int memberContactId,
    required int currentUserContactId,
  }) {
    return _dataSource.addMemberToConversation(
      conversationId: conversationId,
      memberContactId: memberContactId,
      currentUserContactId: currentUserContactId,
    );
  }

  @override
  Future<Conversation?> getConversationByContact({
    required int currentUserContactId,
    required int contactId,
  }) async {
    final conversation = await _dataSource.getConversationByContact(
      currentUserContactId: currentUserContactId,
      contactId: contactId,
    );

    return conversation?.toEntity();
  }

  @override
  Future<void> deleteConversation({required int conversationId}) {
    return _dataSource.deleteConversation(conversationId: conversationId);
  }

  @override
  Future<List<ConversationMember>> getConversationMembers({required int conversationId}) async {
    final members = await _dataSource.getConversationMembers(conversationId: conversationId);

    return members.map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> removeMemberFromConversation({required int conversationId, required int memberContactId}) {
    return _dataSource.removeMemberFromConversation(conversationId: conversationId, memberContactId: memberContactId);
  }

  @override
  void updateLastSeen({required int conversationId, required ConversationMember member}) {
    _dataSource.updateLastSeen(conversationId: conversationId, member: member);
  }

  @override
  Stream<List<int>> onlineContactsIdChanged() {
    return _dataSource.onlineContactsIdChanged();
  }

  @override
  Future<List<Document>> getAllConversationDocuments({
    required int conversationId,
    required int currentUserContactId,
  }) async {
    final files = await _dataSource.getAllConversationMedias(
      conversationId: conversationId,
      currentUserContactId: currentUserContactId,
    );

    return files.where((f) => f.documentPath != null).map((e) => e.toEntity()).toList();
  }

  @override
  Future<Reaction> reactToMessage({
    required int currentUserContactId,
    required int messageId,
    required ReactionType reactionType,
  }) async {
    final reactionData = await _dataSource.reactToMessage(
      currentUserContactId: currentUserContactId,
      messageId: messageId,
      reactionType: reactionType,
    );

    return reactionData.toEntity();
  }

  @override
  Future<void> removeReaction({required int reactionId}) {
    return _dataSource.removeReaction(reactionId: reactionId);
  }
}
