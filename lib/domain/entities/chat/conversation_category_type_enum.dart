enum ConversationCategoryType {
  directMessage,
  groupMessage,
  supportGroup,
  applicantReviewersThread,
  applicantThread,
  taskOwnerDiscussion,
  requestSignOff,
  acceptSignOff,
  declineSignOff,
  chatLevelTask,
  canceledSignOff,
  flaggedTask,
  unFlaggedTask,
  mentorInvite,
  salesReview,
  customerSatisfactionReview,
  demandReview,
  teamCapacityReview,
  overallStabilityReview,
  howMonthGo,
  notificationAlternative,
  taskAlternative,
  mentoringReviewFeedback,
  mentoringReview,
  applicationSubmitted,
  sessionInviteResponse,
  welcomeEmail,
  menteeReport,
  menteeReportInbox,
  mentoringReport,
  startupRequest,
  mentorContract,
  mentorContractCounterSign,
  mentorContractFinalSign,
  programInstanceDiscussion,
  mentorNetworkRequest,
  mentoringAssignment,
  sessionInvite,
  newGroup,
  regularTask,
  formTask,
  applicantReview,
  applicantReviewSubmitted,
  menteeProgress,
  menteeGoodNews,
  projectStatus,
  joinProgram,
  monthlyReport,
  smeBusinessHealth,
  smeReportAdminNotify,
  smeReportMentorNotify,
  stageGroup,
  openFormApplication,
  teamMemberJoined,
  indicatorReview,
  riskComment,
  adminFeedAlert,
  eventFeedback,
  financeManagerNotification,
  paidInvoice,
  productPlans,
  annualReport,
  diagnosticReportReview,
  tribe,
  tribeQuestion,
  tribeQuestionNotification,
  tribeQuestionAnswer,
  tribeFileUpload,
  documentDiscussion,
  tribeNews,
  tribeEvent,
  tribeMemberInvite,
  meetingFeedbackSubmitted,
  formSubmissions,
  wouldLikeAttend,
  supportRequest,
  applicantNotes,
  productDevelopmentStatus,
  tribeMemberAccept,
  programGroupFeed,
  cancelMeeting,
  eventFileDiscussion,
  generalFeedback,
  menteeSelfReviewTask,
  menteeSelfReviewTaskSubmitted,
  opportunityApply,
  fileShare,
  quarterlyReport,
  quarterlyProductDevelopmentStatus,
  quarterlyProductPlans,
  becomeMentor,
  delegateReminder,
  generalFeed,
  businessBurst,
  feedLike,
  feedComment,
  followContact,
  smeNetworkMemberJoined,
  applicationStatus,
  supportRequestChat,
  supportRequestNotification,
  taskStatusUpdate,
  indicatorMappingChat,
  indicatorTaskNote,
  indicatorDataComment,
  indicatorTaskSubmitted
}

extension ConversationCategoryTypeExtension on ConversationCategoryType {
  int get value {
    switch (this) {
      case ConversationCategoryType.directMessage:
        return 1;
      case ConversationCategoryType.groupMessage:
        return 2;
      case ConversationCategoryType.supportGroup:
        return 3;
      case ConversationCategoryType.applicantReviewersThread:
        return 4;
      case ConversationCategoryType.applicantThread:
        return 5;
      case ConversationCategoryType.taskOwnerDiscussion:
        return 6;
      case ConversationCategoryType.requestSignOff:
        return 7;
      case ConversationCategoryType.acceptSignOff:
        return 8;
      case ConversationCategoryType.declineSignOff:
        return 9;
      case ConversationCategoryType.chatLevelTask:
        return 10;
      case ConversationCategoryType.canceledSignOff:
        return 11;
      case ConversationCategoryType.flaggedTask:
        return 13;
      case ConversationCategoryType.unFlaggedTask:
        return 14;
      case ConversationCategoryType.mentorInvite:
        return 20;
      case ConversationCategoryType.salesReview:
        return 109;
      case ConversationCategoryType.customerSatisfactionReview:
        return 110;
      case ConversationCategoryType.demandReview:
        return 111;
      case ConversationCategoryType.teamCapacityReview:
        return 112;
      case ConversationCategoryType.overallStabilityReview:
        return 113;
      case ConversationCategoryType.howMonthGo:
        return 114;
      case ConversationCategoryType.notificationAlternative:
        return 115;
      case ConversationCategoryType.taskAlternative:
        return 116;
      case ConversationCategoryType.mentoringReviewFeedback:
        return 123;
      case ConversationCategoryType.mentoringReview:
        return 124;
      case ConversationCategoryType.applicationSubmitted:
        return 152;
      case ConversationCategoryType.sessionInviteResponse:
        return 201;
      case ConversationCategoryType.welcomeEmail:
        return 204;
      case ConversationCategoryType.menteeReport:
        return 205;
      case ConversationCategoryType.menteeReportInbox:
        return 206;
      case ConversationCategoryType.mentoringReport:
        return 207;
      case ConversationCategoryType.startupRequest:
        return 208;
      case ConversationCategoryType.mentorContract:
        return 209;
      case ConversationCategoryType.mentorContractCounterSign:
        return 210;
      case ConversationCategoryType.mentorContractFinalSign:
        return 211;
      case ConversationCategoryType.programInstanceDiscussion:
        return 212;
      case ConversationCategoryType.mentorNetworkRequest:
        return 213;
      case ConversationCategoryType.mentoringAssignment:
        return 214;
      case ConversationCategoryType.sessionInvite:
        return 215;
      case ConversationCategoryType.newGroup:
        return 216;
      case ConversationCategoryType.regularTask:
        return 217;
      case ConversationCategoryType.formTask:
        return 218;
      case ConversationCategoryType.applicantReview:
        return 219;
      case ConversationCategoryType.applicantReviewSubmitted:
        return 220;
      case ConversationCategoryType.menteeProgress:
        return 221;
      case ConversationCategoryType.menteeGoodNews:
        return 222;
      case ConversationCategoryType.projectStatus:
        return 223;
      case ConversationCategoryType.joinProgram:
        return 224;
      case ConversationCategoryType.monthlyReport:
        return 225;
      case ConversationCategoryType.smeBusinessHealth:
        return 226;
      case ConversationCategoryType.smeReportAdminNotify:
        return 227;
      case ConversationCategoryType.smeReportMentorNotify:
        return 228;
      case ConversationCategoryType.stageGroup:
        return 229;
      case ConversationCategoryType.openFormApplication:
        return 230;
      case ConversationCategoryType.teamMemberJoined:
        return 231;
      case ConversationCategoryType.indicatorReview:
        return 232;
      case ConversationCategoryType.riskComment:
        return 233;
      case ConversationCategoryType.adminFeedAlert:
        return 234;
      case ConversationCategoryType.eventFeedback:
        return 235;
      case ConversationCategoryType.financeManagerNotification:
        return 236;
      case ConversationCategoryType.paidInvoice:
        return 237;
      case ConversationCategoryType.productPlans:
        return 238;
      case ConversationCategoryType.annualReport:
        return 239;
      case ConversationCategoryType.diagnosticReportReview:
        return 240;
      case ConversationCategoryType.tribe:
        return 241;
      case ConversationCategoryType.tribeQuestion:
        return 242;
      case ConversationCategoryType.tribeQuestionNotification:
        return 243;
      case ConversationCategoryType.tribeQuestionAnswer:
        return 244;
      case ConversationCategoryType.tribeFileUpload:
        return 245;
      case ConversationCategoryType.documentDiscussion:
        return 246;
      case ConversationCategoryType.tribeNews:
        return 247;
      case ConversationCategoryType.tribeEvent:
        return 248;
      case ConversationCategoryType.tribeMemberInvite:
        return 249;
      case ConversationCategoryType.meetingFeedbackSubmitted:
        return 250;
      case ConversationCategoryType.formSubmissions:
        return 251;
      case ConversationCategoryType.wouldLikeAttend:
        return 252;
      case ConversationCategoryType.supportRequest:
        return 253;
      case ConversationCategoryType.applicantNotes:
        return 254;
      case ConversationCategoryType.productDevelopmentStatus:
        return 255;
      case ConversationCategoryType.tribeMemberAccept:
        return 256;
      case ConversationCategoryType.programGroupFeed:
        return 257;
      case ConversationCategoryType.cancelMeeting:
        return 258;
      case ConversationCategoryType.eventFileDiscussion:
        return 259;
      case ConversationCategoryType.generalFeedback:
        return 260;
      case ConversationCategoryType.menteeSelfReviewTask:
        return 261;
      case ConversationCategoryType.menteeSelfReviewTaskSubmitted:
        return 262;
      case ConversationCategoryType.opportunityApply:
        return 263;
      case ConversationCategoryType.fileShare:
        return 264;
      case ConversationCategoryType.quarterlyReport:
        return 265;
      case ConversationCategoryType.quarterlyProductDevelopmentStatus:
        return 266;
      case ConversationCategoryType.quarterlyProductPlans:
        return 267;
      case ConversationCategoryType.becomeMentor:
        return 268;
      case ConversationCategoryType.delegateReminder:
        return 269;
      case ConversationCategoryType.generalFeed:
        return 270;
      case ConversationCategoryType.businessBurst:
        return 271;
      case ConversationCategoryType.feedLike:
        return 272;
      case ConversationCategoryType.feedComment:
        return 273;
      case ConversationCategoryType.followContact:
        return 274;
      case ConversationCategoryType.smeNetworkMemberJoined:
        return 275;
      case ConversationCategoryType.applicationStatus:
        return 276;
      case ConversationCategoryType.supportRequestChat:
        return 277;
      case ConversationCategoryType.supportRequestNotification:
        return 278;
      case ConversationCategoryType.taskStatusUpdate:
        return 279;
      case ConversationCategoryType.indicatorMappingChat:
        return 280;
      case ConversationCategoryType.indicatorTaskNote:
        return 281;
      case ConversationCategoryType.indicatorDataComment:
        return 282;
      case ConversationCategoryType.indicatorTaskSubmitted:
        return 283;
    }
  }
}
