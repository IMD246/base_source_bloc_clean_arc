import 'dart:async';
import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../core/mixins/mixins.dart';
import '../../domain/entities/chat/conversation_member.dart';
import '../../domain/entities/enums/reaction_type_enum.dart';
import '../../domain/entities/user.dart';
import '../models/helper/avnon_datasource_helper.dart';
import '../models/models.dart';
import '../providers/app_socket_provider.dart';
import 'gateway/api/api.dart';

@lazySingleton
class ChatDataSource with LogMixin {
  ChatDataSource(this._client, this._appSocketProvider);

  final AuthenticatedRestApiClient _client;
  final AppSocketProvider _appSocketProvider;

  Future<List<ConversationData>> getConversations({
    required int currentUserContactId,
    DiscussionCategory? discussionCategory,
    int referenceId = 0,
    int categoryTypeId = 0,
    int parentDiscussionId = 0,
  }) {
    return _client.get(
      '/discussion/contactgroup',
      queryParameters: <String, dynamic>{
        'contactId': currentUserContactId,
        'discussionCategoryID': categoryTypeId,
        'referenceID': referenceId,
        'parentDiscussionID': parentDiscussionId,
      },
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
      decoder: ConversationData.fromJson,
    );
  }

  List<int> getOnlineUsers() {
    return _appSocketProvider.getChannelContactId(dashboardChannel).toList();
  }

  Future<List<MessageData>> getMessages({required int discussionId, required int pageIndex, required int pageSize}) {
    return _client.get(
      '/discussion/all',
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
      queryParameters: <String, dynamic>{
        'parentDiscussionID': discussionId,
        'pageIndex': pageIndex,
        'pageSize': pageSize,
        // static value
        'contactID': 0,
        'referenceID': 0,
        'discussionCategoryID': 0,
        'discussionID': 0,
        'replyDiscussionID': 0,
        'discussionAudienceID': 0,
        'taskOwnerID': 0,
        'subReferenceID': 0,
        'userContactID': 0,
      },
      decoder: MessageData.fromJson,
    );
  }

  Future<MessageData> sendMessage({
    required int discussionId,
    required int currentUserContactId,
    required String content,
    required bool isDirectMessage,
    int? parentMessageId,
  }) async {
    final data = <String, dynamic>{
      'discussionBody': content,
      'parentDiscussionID': discussionId,
      'discussionCreatedByContactID': currentUserContactId,
      'replyDiscussionID': parentMessageId,
      // static value
      'discussionCategoryID':
          isDirectMessage ? DiscussionCategory.directMessage.id : DiscussionCategory.groupMessage.id,
      'discussionTopic': 'Attachment',
      'discussionValue': 0,
      'isDirectMessage': true,
      'mentionUserIds': <dynamic>[],
      'percentComplete': 0,
      'referenceID': 0,
      'subReferenceID': 0,
    };

    final MessageData message = await _client.post(
      '/discussion',
      body: data,
      decoder: MessageData.fromJsonSentMessage,
    );

    // temporary solution - notify other users that message was sent
    final agr = InvokeChannelArgument(ChannelEventType.chatAdd, message.toJson());
    unawaited(_appSocketProvider.transferMessage('chat$discussionId', agr));

    return message;
  }

  Future<void> deleteMessage(int conversationId, int messageId) async {
    await _client.delete<dynamic, dynamic>(
      '/discussion/$messageId',
      decoder: (_) {},
    );
    // temporary solution - notify other users that message was deleted
    final agr = InvokeChannelArgument(ChannelEventType.chatDelete, <String, dynamic>{'discussionID': messageId});
    unawaited(_appSocketProvider.transferMessage('chat$conversationId', agr));
  }

  Future<void> editMessage(int conversationId, int messageId, String editedContent) async {
    final data = <String, dynamic>{
      'parentDiscussionID': conversationId,
      'discussionID': messageId,
      'discussionBody': '<p>$editedContent</p>',
      'discussionTopic': 'Attachments',
    };

    final MessageData editedMessage = await _client.put(
      '/discussion',
      body: data,
      decoder: MessageData.fromJson,
    );

    // temporary solution - notify other users that message was edited
    final agr = InvokeChannelArgument(ChannelEventType.chatEdit, editedMessage.toJson());
    unawaited(_appSocketProvider.transferMessage('chat$conversationId', agr));
  }

  Future<String> sendAttachment({
    required int messageId,
    required int currentUserContactId,
    required int conversationId,
    required File file,
  }) async {
    final query = {
      'referenceID': messageId,
      'reference2ID': conversationId,
      'documentUploadedByID': currentUserContactId,
      // static value
      'documentCategoryID': DocumentLinkCategory.chatDocument.value,
      'documentFolderID': 0,
      'IsStream': false,
      'contactID': 0,
      'companyID': 0,
    };

    final body = {'file': file};

    final listResult = await _client.postMultiForm(
      '/document',
      queryParameters: query,
      body: body,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
      decoder: (data) => AvnonDataSourceHelper.addBlobStoragePrefix(data['documentPath']),
    );

    return listResult.first;
  }

  Future<void> joinChannel(int discussionId) async {
    final channel = 'chat$discussionId';
    await _appSocketProvider.joinChannel(channel);
  }

  void leaveChannel(int discussionId) {
    final channel = 'chat$discussionId';
    _appSocketProvider.leaveChannel(channel);
  }

  Stream<MessageData> onReceivedMessage() async* {
    await for (final event
        in _appSocketProvider.messageIncomingStream.where((event) => event.type == ChannelEventType.chatAdd)) {
      final message = MessageData.fromJson(event.data);

      yield message;
    }
  }

  Stream<MessageData> onMessageEdited() async* {
    await for (final event
        in _appSocketProvider.messageIncomingStream.where((event) => event.type == ChannelEventType.chatEdit)) {
      final message = MessageData.fromJson(event.data);

      yield message;
    }
  }

  Stream<DeletedMessageData> onMessageDeleted() async* {
    await for (final event
        in _appSocketProvider.messageIncomingStream.where((event) => event.type == ChannelEventType.chatDelete)) {
      final deletedMessage = DeletedMessageData.fromJson(event.data);

      yield deletedMessage;
    }
  }

  Stream<TypingIndicatorData> onTyping() async* {
    await for (final event
        in _appSocketProvider.messageIncomingStream.where((event) => event.type == ChannelEventType.typingIndicator)) {
      final typingIndicator = TypingIndicatorData.fromJson(event.data);

      yield typingIndicator;
    }
  }

  void sendTypingIndicator({required int conversationId, required User user, required bool isTyping}) {
    final channel = 'chat$conversationId';
    final indicatorData = TypingIndicatorData(
      id: user.contactID!,
      fullName: user.fullName,
      typing: isTyping,
    );

    final agr = InvokeChannelArgument(ChannelEventType.typingIndicator, indicatorData.toJson());

    _appSocketProvider.transferMessage(channel, agr);
  }

  Future<ConversationData> createConversation({
    required int currentUserContactId,
    required DiscussionCategory category,
    String name = '',
  }) {
    final data = <String, dynamic>{
      'discussionCreatedByContactID': currentUserContactId,
      'discussionCategoryID': category.id,
      'discussionTopic': name,
      // static value
      'discussionBody': '',
      'isDirectMessage': true,
      'parentDiscussionID': 0,
      'discussionValue': 0,
      'referenceID': 0,
      'replyDiscussionID': 0,
    };

    return _client.post(
      '/discussion',
      body: data,
      decoder: (data) {
        data['discussionID'] = data['inOut_DiscussionID'];

        return ConversationData.fromJson(data);
      },
    );
  }

  Future<void> addMemberToConversation({
    required int conversationId,
    required int memberContactId,
    required int currentUserContactId,
  }) {
    final data = <String, dynamic>{
      'discussionID': conversationId,
      'contactID': memberContactId,
      'submittedByContactID': currentUserContactId,
      'hasAccepted': true,
      'isAdmin': true,
    };

    return _client.post(
      '/discussion/member',
      body: data,
      returnRawResponse: true,
      decoder: (_) {},
    );
  }

  Future<void> deleteConversation({required int conversationId}) {
    return _client.delete(
      '/discussion/$conversationId',
      decoder: (_) {},
    );
  }

  Future<ConversationData?> getConversationByContact({
    required int currentUserContactId,
    required int contactId,
  }) async {
    final query = {
      'contactID': contactId,
      'loggedInContactId': currentUserContactId,
    };

    try {
      return _client.get(
        '/discussion/bycontact',
        queryParameters: query,
        decoder: (data) {
          if (data == null) {
            return null;
          }

          return ConversationData.fromJson(data);
        },
      );
    } on Exception catch (e) {
      logError(e);

      return null;
    }
  }

  Future<List<DiscussionMemberData>> getConversationMembers({required int conversationId}) {
    return _client.get(
      '/discussion/member/all/$conversationId',
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
      decoder: DiscussionMemberData.fromJson,
    );
  }

  Future<void> removeMemberFromConversation({required int conversationId, required int memberContactId}) {
    return _client.delete(
      '/discussion/member?discussionID=$conversationId&contactID=$memberContactId',
      decoder: (_) {},
    );
  }

  Future<void> updateLastSeen({required int conversationId, required ConversationMember member}) {
    return _client.put(
      '/discussion/member',
      body: <String, dynamic>{
        'discussionID': conversationId,
        'contactID': member.contactID,
        'discussionMemberID': member.discussionMemberID,
        'lastReadDate': DateTime.now().toUtc().toIso8601String(),
      },
      decoder: (_) {},
    );
  }

  Stream<List<int>> onlineContactsIdChanged() {
    return _appSocketProvider.onlineConnectionContactIdStream(dashboardChannel).distinct();
  }

  Future<List<DocumentData>> getAllConversationMedias({
    required int conversationId,
    required int currentUserContactId,
  }) {
    final query = {
      'reference2ID': conversationId,
      'UserContactID': currentUserContactId,
      'documentCategoryID': DocumentLinkCategory.chatDocument.value,
      'referenceID': 0,
      'documentFolderID': 0,
      'documentUploadedByID': 0,
      'contactID': 0,
      'companyID': 0,
    };

    return _client.get(
      '/document',
      queryParameters: query,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
      decoder: DocumentData.fromJson,
    );
  }

  Future<ReactionData> reactToMessage({
    required int currentUserContactId,
    required int messageId,
    required ReactionType reactionType,
  }) {
    final data = <String, dynamic>{
      'referenceID': messageId,
      'contactID': currentUserContactId,
      'emojiID': reactionType.id,
      // static value
      'likeCategoryID': 1,
    };

    return _client.post(
      '/like',
      body: data,
      decoder: (data) {
        data['likeID'] = data['inOut_LikeID'];

        return ReactionData.fromJson(data);
      },
    );
  }

  Future<void> removeReaction({required int reactionId}) {
    return _client.delete(
      '/like/$reactionId',
      returnRawResponse: true,
      decoder: (_) {},
    );
  }
}
