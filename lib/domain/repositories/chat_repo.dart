import 'dart:io';

import '../entities/entities.dart';

abstract class ChatRepository {
  Future<List<Conversation>> getConversations({
    required int currentUserContactId,
    final int referenceId = 0,
    final int categoryTypeId = 0,
    final int parentDiscussionId = 0,
  });

  Future<List<Message>> getMessages({required int discussionId, required int pageIndex, required int pageSize});

  Future<Message> sendMessage({
    required int discussionId,
    required int currentUserContactId,
    required String content,
    int? parentMessageId,
    bool isDirectMessage = true,
  });

  // Return the url
  Future<String> sendAttachment({
    required int messageId,
    required int currentUserContactId,
    required int conversationId,
    required File file,
  });

  Future<void> deleteMessage({required int conversationId, required int messageId});

  Future<void> editMessage({required int conversationId, required int messageId, required String editedContent});

  // socket
  Future<void> joinChatChannel(int conversationId);

  void leaveChatChannel(int conversationId);

  Stream<Message> onReceivedMessage();

  Stream<Message> onMessageEdited();

  Stream<int> onMessageDeleted();

  Stream<TypingIndicator> onTyping();

  void sendTypingIndicator({
    required int conversationId,
    required User user,
    required bool isTyping,
  });

  Future<Conversation> createPrivateConversation({
    required int currentUserContactId,
  });

  Future<Conversation> createGroupConversation({
    required int currentUserContactId,
    required String name,
  });

  Future<void> addMemberToConversation({
    required int conversationId,
    required int memberContactId,
    required int currentUserContactId,
  });

  Future<void> removeMemberFromConversation({required int conversationId, required int memberContactId});

  Future<Conversation?> getConversationByContact({required int currentUserContactId, required int contactId});

  Future<void> deleteConversation({required int conversationId});

  Future<List<ConversationMember>> getConversationMembers({required int conversationId});

  void updateLastSeen({required int conversationId, required ConversationMember member});

  Stream<List<int>> onlineContactsIdChanged();

  Future<List<Document>> getAllConversationDocuments({required int conversationId, required int currentUserContactId});

  Future<Reaction> reactToMessage({
    required int currentUserContactId,
    required int messageId,
    required ReactionType reactionType,
  });

  Future<void> removeReaction({required int reactionId});
}
