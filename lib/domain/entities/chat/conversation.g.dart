// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationImpl _$$ConversationImplFromJson(Map<String, dynamic> json) =>
    _$ConversationImpl(
      discussionId: json['discussionId'] as int,
      parentId: json['parentId'] as int,
      topic: json['topic'] as String,
      imageUrl: json['imageUrl'] as String,
      createdByContactId: json['createdByContactId'] as int,
      type: $enumDecode(_$ConversationTypeEnumMap, json['type']),
      categoryType:
          $enumDecode(_$ConversationCategoryTypeEnumMap, json['categoryType']),
      referenceId: json['referenceId'] as int,
      lastMessage: json['lastMessage'] == null
          ? null
          : Message.fromJson(json['lastMessage'] as Map<String, dynamic>),
      lastMessageAt: json['lastMessageAt'] == null
          ? null
          : DateTime.parse(json['lastMessageAt'] as String),
      unreadCount: json['unreadCount'] as int? ?? 0,
      targetUser: json['targetUser'] == null
          ? null
          : User.fromJson(json['targetUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConversationImplToJson(_$ConversationImpl instance) =>
    <String, dynamic>{
      'discussionId': instance.discussionId,
      'parentId': instance.parentId,
      'topic': instance.topic,
      'imageUrl': instance.imageUrl,
      'createdByContactId': instance.createdByContactId,
      'type': _$ConversationTypeEnumMap[instance.type]!,
      'categoryType': _$ConversationCategoryTypeEnumMap[instance.categoryType]!,
      'referenceId': instance.referenceId,
      'lastMessage': instance.lastMessage,
      'lastMessageAt': instance.lastMessageAt?.toIso8601String(),
      'unreadCount': instance.unreadCount,
      'targetUser': instance.targetUser,
    };

const _$ConversationTypeEnumMap = {
  ConversationType.private: 'private',
  ConversationType.group: 'group',
};

const _$ConversationCategoryTypeEnumMap = {
  ConversationCategoryType.directMessage: 'directMessage',
  ConversationCategoryType.groupMessage: 'groupMessage',
  ConversationCategoryType.supportGroup: 'supportGroup',
  ConversationCategoryType.applicantReviewersThread: 'applicantReviewersThread',
  ConversationCategoryType.applicantThread: 'applicantThread',
  ConversationCategoryType.taskOwnerDiscussion: 'taskOwnerDiscussion',
  ConversationCategoryType.requestSignOff: 'requestSignOff',
  ConversationCategoryType.acceptSignOff: 'acceptSignOff',
  ConversationCategoryType.declineSignOff: 'declineSignOff',
  ConversationCategoryType.chatLevelTask: 'chatLevelTask',
  ConversationCategoryType.canceledSignOff: 'canceledSignOff',
  ConversationCategoryType.flaggedTask: 'flaggedTask',
  ConversationCategoryType.unFlaggedTask: 'unFlaggedTask',
  ConversationCategoryType.mentorInvite: 'mentorInvite',
  ConversationCategoryType.salesReview: 'salesReview',
  ConversationCategoryType.customerSatisfactionReview:
      'customerSatisfactionReview',
  ConversationCategoryType.demandReview: 'demandReview',
  ConversationCategoryType.teamCapacityReview: 'teamCapacityReview',
  ConversationCategoryType.overallStabilityReview: 'overallStabilityReview',
  ConversationCategoryType.howMonthGo: 'howMonthGo',
  ConversationCategoryType.notificationAlternative: 'notificationAlternative',
  ConversationCategoryType.taskAlternative: 'taskAlternative',
  ConversationCategoryType.mentoringReviewFeedback: 'mentoringReviewFeedback',
  ConversationCategoryType.mentoringReview: 'mentoringReview',
  ConversationCategoryType.applicationSubmitted: 'applicationSubmitted',
  ConversationCategoryType.sessionInviteResponse: 'sessionInviteResponse',
  ConversationCategoryType.welcomeEmail: 'welcomeEmail',
  ConversationCategoryType.menteeReport: 'menteeReport',
  ConversationCategoryType.menteeReportInbox: 'menteeReportInbox',
  ConversationCategoryType.mentoringReport: 'mentoringReport',
  ConversationCategoryType.startupRequest: 'startupRequest',
  ConversationCategoryType.mentorContract: 'mentorContract',
  ConversationCategoryType.mentorContractCounterSign:
      'mentorContractCounterSign',
  ConversationCategoryType.mentorContractFinalSign: 'mentorContractFinalSign',
  ConversationCategoryType.programInstanceDiscussion:
      'programInstanceDiscussion',
  ConversationCategoryType.mentorNetworkRequest: 'mentorNetworkRequest',
  ConversationCategoryType.mentoringAssignment: 'mentoringAssignment',
  ConversationCategoryType.sessionInvite: 'sessionInvite',
  ConversationCategoryType.newGroup: 'newGroup',
  ConversationCategoryType.regularTask: 'regularTask',
  ConversationCategoryType.formTask: 'formTask',
  ConversationCategoryType.applicantReview: 'applicantReview',
  ConversationCategoryType.applicantReviewSubmitted: 'applicantReviewSubmitted',
  ConversationCategoryType.menteeProgress: 'menteeProgress',
  ConversationCategoryType.menteeGoodNews: 'menteeGoodNews',
  ConversationCategoryType.projectStatus: 'projectStatus',
  ConversationCategoryType.joinProgram: 'joinProgram',
  ConversationCategoryType.monthlyReport: 'monthlyReport',
  ConversationCategoryType.smeBusinessHealth: 'smeBusinessHealth',
  ConversationCategoryType.smeReportAdminNotify: 'smeReportAdminNotify',
  ConversationCategoryType.smeReportMentorNotify: 'smeReportMentorNotify',
  ConversationCategoryType.stageGroup: 'stageGroup',
  ConversationCategoryType.openFormApplication: 'openFormApplication',
  ConversationCategoryType.teamMemberJoined: 'teamMemberJoined',
  ConversationCategoryType.indicatorReview: 'indicatorReview',
  ConversationCategoryType.riskComment: 'riskComment',
  ConversationCategoryType.adminFeedAlert: 'adminFeedAlert',
  ConversationCategoryType.eventFeedback: 'eventFeedback',
  ConversationCategoryType.financeManagerNotification:
      'financeManagerNotification',
  ConversationCategoryType.paidInvoice: 'paidInvoice',
  ConversationCategoryType.productPlans: 'productPlans',
  ConversationCategoryType.annualReport: 'annualReport',
  ConversationCategoryType.diagnosticReportReview: 'diagnosticReportReview',
  ConversationCategoryType.tribe: 'tribe',
  ConversationCategoryType.tribeQuestion: 'tribeQuestion',
  ConversationCategoryType.tribeQuestionNotification:
      'tribeQuestionNotification',
  ConversationCategoryType.tribeQuestionAnswer: 'tribeQuestionAnswer',
  ConversationCategoryType.tribeFileUpload: 'tribeFileUpload',
  ConversationCategoryType.documentDiscussion: 'documentDiscussion',
  ConversationCategoryType.tribeNews: 'tribeNews',
  ConversationCategoryType.tribeEvent: 'tribeEvent',
  ConversationCategoryType.tribeMemberInvite: 'tribeMemberInvite',
  ConversationCategoryType.meetingFeedbackSubmitted: 'meetingFeedbackSubmitted',
  ConversationCategoryType.formSubmissions: 'formSubmissions',
  ConversationCategoryType.wouldLikeAttend: 'wouldLikeAttend',
  ConversationCategoryType.supportRequest: 'supportRequest',
  ConversationCategoryType.applicantNotes: 'applicantNotes',
  ConversationCategoryType.productDevelopmentStatus: 'productDevelopmentStatus',
  ConversationCategoryType.tribeMemberAccept: 'tribeMemberAccept',
  ConversationCategoryType.programGroupFeed: 'programGroupFeed',
  ConversationCategoryType.cancelMeeting: 'cancelMeeting',
  ConversationCategoryType.eventFileDiscussion: 'eventFileDiscussion',
  ConversationCategoryType.generalFeedback: 'generalFeedback',
  ConversationCategoryType.menteeSelfReviewTask: 'menteeSelfReviewTask',
  ConversationCategoryType.menteeSelfReviewTaskSubmitted:
      'menteeSelfReviewTaskSubmitted',
  ConversationCategoryType.opportunityApply: 'opportunityApply',
  ConversationCategoryType.fileShare: 'fileShare',
  ConversationCategoryType.quarterlyReport: 'quarterlyReport',
  ConversationCategoryType.quarterlyProductDevelopmentStatus:
      'quarterlyProductDevelopmentStatus',
  ConversationCategoryType.quarterlyProductPlans: 'quarterlyProductPlans',
  ConversationCategoryType.becomeMentor: 'becomeMentor',
  ConversationCategoryType.delegateReminder: 'delegateReminder',
  ConversationCategoryType.generalFeed: 'generalFeed',
  ConversationCategoryType.businessBurst: 'businessBurst',
  ConversationCategoryType.feedLike: 'feedLike',
  ConversationCategoryType.feedComment: 'feedComment',
  ConversationCategoryType.followContact: 'followContact',
  ConversationCategoryType.smeNetworkMemberJoined: 'smeNetworkMemberJoined',
  ConversationCategoryType.applicationStatus: 'applicationStatus',
  ConversationCategoryType.supportRequestChat: 'supportRequestChat',
  ConversationCategoryType.supportRequestNotification:
      'supportRequestNotification',
  ConversationCategoryType.taskStatusUpdate: 'taskStatusUpdate',
  ConversationCategoryType.indicatorMappingChat: 'indicatorMappingChat',
  ConversationCategoryType.indicatorTaskNote: 'indicatorTaskNote',
  ConversationCategoryType.indicatorDataComment: 'indicatorDataComment',
  ConversationCategoryType.indicatorTaskSubmitted: 'indicatorTaskSubmitted',
};
