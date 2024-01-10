enum DiscussionCategory {
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
  indicatorTaskSubmittedNote,
  weeklySmeReportNotification,
  applicantStageFieldMapping,
  serviceProviderNetworkRequest,
  serviceProviderInvite,
  opportunityInvite,
  opportunityVote,
  opportunityVoteSubmit,
  workAssigned,
  projectProviderCloseReport,
  projectSmeCloseReview,
  projectStatusUpdate,
  applicationChangeRequest,
  applicationChangeResponse,
  investmentRequestChat,
  investmentRequestNotification,
  reopenStage,
  venueBookingRequest,
  venueBooking,
  opportunity,
  programFollower,
  programInvite,
  grantFundingChat,
  grantPaymentRequest,
  grantPaymentResponse,
  grantFundingResponse,
  grantFundingChange,
  recurrenceInvite,
  documentCompliancyRequest,
  documentCompliancyUploaded,
  grantFundingFeed,
  fundFollower,
  grantReportRequest
}

extension DiscussionCategoryX on DiscussionCategory {
  int get id {
    switch (this) {
      case DiscussionCategory.directMessage:
        return 1;
      case DiscussionCategory.groupMessage:
        return 2;
      case DiscussionCategory.supportGroup:
        return 3;
      case DiscussionCategory.applicantReviewersThread:
        return 4;
      case DiscussionCategory.applicantThread:
        return 5;
      case DiscussionCategory.taskOwnerDiscussion:
        return 6;
      case DiscussionCategory.requestSignOff:
        return 7;
      case DiscussionCategory.acceptSignOff:
        return 8;
      case DiscussionCategory.declineSignOff:
        return 9;
      case DiscussionCategory.chatLevelTask:
        return 10;
      case DiscussionCategory.canceledSignOff:
        return 11;
      case DiscussionCategory.flaggedTask:
        return 13;
      case DiscussionCategory.unFlaggedTask:
        return 14;
      case DiscussionCategory.mentorInvite:
        return 20;
      case DiscussionCategory.salesReview:
        return 109;
      case DiscussionCategory.customerSatisfactionReview:
        return 110;
      case DiscussionCategory.demandReview:
        return 111;
      case DiscussionCategory.teamCapacityReview:
        return 112;
      case DiscussionCategory.overallStabilityReview:
        return 113;
      case DiscussionCategory.howMonthGo:
        return 114;
      case DiscussionCategory.notificationAlternative:
        return 115;
      case DiscussionCategory.taskAlternative:
        return 116;
      case DiscussionCategory.mentoringReviewFeedback:
        return 123;
      case DiscussionCategory.mentoringReview:
        return 124;
      case DiscussionCategory.applicationSubmitted:
        return 152;
      case DiscussionCategory.sessionInviteResponse:
        return 201;
      case DiscussionCategory.welcomeEmail:
        return 204;
      case DiscussionCategory.menteeReport:
        return 205;
      case DiscussionCategory.menteeReportInbox:
        return 206;
      case DiscussionCategory.mentoringReport:
        return 207;
      case DiscussionCategory.startupRequest:
        return 208;
      case DiscussionCategory.mentorContract:
        return 209;
      case DiscussionCategory.mentorContractCounterSign:
        return 210;
      case DiscussionCategory.mentorContractFinalSign:
        return 211;
      case DiscussionCategory.programInstanceDiscussion:
        return 212;
      case DiscussionCategory.mentorNetworkRequest:
        return 213;
      case DiscussionCategory.mentoringAssignment:
        return 214;
      case DiscussionCategory.sessionInvite:
        return 215;
      case DiscussionCategory.newGroup:
        return 216;
      case DiscussionCategory.regularTask:
        return 217;
      case DiscussionCategory.formTask:
        return 218;
      case DiscussionCategory.applicantReview:
        return 219;
      case DiscussionCategory.applicantReviewSubmitted:
        return 220;
      case DiscussionCategory.menteeProgress:
        return 221;
      case DiscussionCategory.menteeGoodNews:
        return 222;
      case DiscussionCategory.projectStatus:
        return 223;
      case DiscussionCategory.joinProgram:
        return 224;
      case DiscussionCategory.monthlyReport:
        return 225;
      case DiscussionCategory.smeBusinessHealth:
        return 226;
      case DiscussionCategory.smeReportAdminNotify:
        return 227;
      case DiscussionCategory.smeReportMentorNotify:
        return 228;
      case DiscussionCategory.stageGroup:
        return 229;
      case DiscussionCategory.openFormApplication:
        return 230;
      case DiscussionCategory.teamMemberJoined:
        return 231;
      case DiscussionCategory.indicatorReview:
        return 232;
      case DiscussionCategory.riskComment:
        return 233;
      case DiscussionCategory.adminFeedAlert:
        return 234;
      case DiscussionCategory.eventFeedback:
        return 235;
      case DiscussionCategory.financeManagerNotification:
        return 236;
      case DiscussionCategory.paidInvoice:
        return 237;
      case DiscussionCategory.productPlans:
        return 238;
      case DiscussionCategory.annualReport:
        return 239;
      case DiscussionCategory.diagnosticReportReview:
        return 240;
      case DiscussionCategory.tribe:
        return 241;
      case DiscussionCategory.tribeQuestion:
        return 242;
      case DiscussionCategory.tribeQuestionNotification:
        return 243;
      case DiscussionCategory.tribeQuestionAnswer:
        return 244;
      case DiscussionCategory.tribeFileUpload:
        return 245;
      case DiscussionCategory.documentDiscussion:
        return 246;
      case DiscussionCategory.tribeNews:
        return 247;
      case DiscussionCategory.tribeEvent:
        return 248;
      case DiscussionCategory.tribeMemberInvite:
        return 249;
      case DiscussionCategory.meetingFeedbackSubmitted:
        return 250;
      case DiscussionCategory.formSubmissions:
        return 251;
      case DiscussionCategory.wouldLikeAttend:
        return 252;
      case DiscussionCategory.supportRequest:
        return 253;
      case DiscussionCategory.applicantNotes:
        return 254;
      case DiscussionCategory.productDevelopmentStatus:
        return 255;
      case DiscussionCategory.tribeMemberAccept:
        return 256;
      case DiscussionCategory.programGroupFeed:
        return 257;
      case DiscussionCategory.cancelMeeting:
        return 258;
      case DiscussionCategory.eventFileDiscussion:
        return 259;
      case DiscussionCategory.generalFeedback:
        return 260;
      case DiscussionCategory.menteeSelfReviewTask:
        return 261;
      case DiscussionCategory.menteeSelfReviewTaskSubmitted:
        return 262;
      case DiscussionCategory.opportunityApply:
        return 263;
      case DiscussionCategory.fileShare:
        return 264;
      case DiscussionCategory.quarterlyReport:
        return 265;
      case DiscussionCategory.quarterlyProductDevelopmentStatus:
        return 266;
      case DiscussionCategory.quarterlyProductPlans:
        return 267;
      case DiscussionCategory.becomeMentor:
        return 268;
      case DiscussionCategory.delegateReminder:
        return 269;
      case DiscussionCategory.generalFeed:
        return 270;
      case DiscussionCategory.businessBurst:
        return 271;
      case DiscussionCategory.feedLike:
        return 272;
      case DiscussionCategory.feedComment:
        return 273;
      case DiscussionCategory.followContact:
        return 274;
      case DiscussionCategory.smeNetworkMemberJoined:
        return 275;
      case DiscussionCategory.applicationStatus:
        return 276;
      case DiscussionCategory.supportRequestChat:
        return 277;
      case DiscussionCategory.supportRequestNotification:
        return 278;
      case DiscussionCategory.taskStatusUpdate:
        return 279;
      case DiscussionCategory.indicatorMappingChat:
        return 280;
      case DiscussionCategory.indicatorTaskNote:
        return 281;
      case DiscussionCategory.indicatorDataComment:
        return 282;
      case DiscussionCategory.indicatorTaskSubmittedNote:
        return 283;
      case DiscussionCategory.weeklySmeReportNotification:
        return 284;
      case DiscussionCategory.applicantStageFieldMapping:
        return 285;
      case DiscussionCategory.serviceProviderNetworkRequest:
        return 286;
      case DiscussionCategory.serviceProviderInvite:
        return 287;
      case DiscussionCategory.opportunityInvite:
        return 288;
      case DiscussionCategory.opportunityVote:
        return 289;
      case DiscussionCategory.opportunityVoteSubmit:
        return 290;
      case DiscussionCategory.workAssigned:
        return 291;
      case DiscussionCategory.projectProviderCloseReport:
        return 292;
      case DiscussionCategory.projectSmeCloseReview:
        return 293;
      case DiscussionCategory.projectStatusUpdate:
        return 294;
      case DiscussionCategory.applicationChangeRequest:
        return 295;
      case DiscussionCategory.applicationChangeResponse:
        return 296;
      case DiscussionCategory.investmentRequestChat:
        return 297;
      case DiscussionCategory.investmentRequestNotification:
        return 298;
      case DiscussionCategory.reopenStage:
        return 299;
      case DiscussionCategory.venueBookingRequest:
        return 300;
      case DiscussionCategory.venueBooking:
        return 301;
      case DiscussionCategory.opportunity:
        return 412;
      case DiscussionCategory.programFollower:
        return 413;
      case DiscussionCategory.programInvite:
        return 414;
      case DiscussionCategory.grantFundingChat:
        return 520;
      case DiscussionCategory.grantPaymentRequest:
        return 521;
      case DiscussionCategory.grantPaymentResponse:
        return 522;
      case DiscussionCategory.grantFundingResponse:
        return 523;
      case DiscussionCategory.grantFundingChange:
        return 524;
      case DiscussionCategory.recurrenceInvite:
        return 525;
      case DiscussionCategory.documentCompliancyRequest:
        return 526;
      case DiscussionCategory.documentCompliancyUploaded:
        return 527;
      case DiscussionCategory.grantFundingFeed:
        return 528;
      case DiscussionCategory.fundFollower:
        return 529;
      case DiscussionCategory.grantReportRequest:
        return 530;
      default:
        return -1;
    }
  }
}

// ====== DocumentLinkCategoryList ======
enum DocumentLinkCategory { smeResource, chatDocument, profilePhoto }

extension DocumentLinkCategoryListExtension on DocumentLinkCategory {
  int get value {
    switch (this) {
      case DocumentLinkCategory.smeResource:
        return 1;
      case DocumentLinkCategory.chatDocument:
        return 22;
      case DocumentLinkCategory.profilePhoto:
        return 3;
      default:
        return -1;
    }
  }
}
