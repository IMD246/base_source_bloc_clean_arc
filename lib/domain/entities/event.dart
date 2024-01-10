import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const Event._();

  const factory Event({
    int? eventID,
    int? eventDelegateID,
    int? videoCallProviderID,
    String? delegatePhoto,
    String? eventTitle,
    String? zoomMeetingID,
    String? firstname,
    String? surname,
    int? contactID,
    int? eventCategoryID,
    int? eventDelegateTypeID,
    String? endTime,
    String? startTime,
    int? eventDelegateStatusID,
    String? feedbackSummary,
    int? overallScore,
    int? reviewCount,
    int? distributedReviews,
    dynamic programInstanceID,
    dynamic programInstanceTitle,
    int? amountSpent,
    String? zoomStartURL,
    dynamic taskStatusID,
    int? attended,
    dynamic companyID,
    dynamic menteeCompany,
    String? delegateCompany,
    int? delegateFeedbackSubmitted,
    dynamic taskOwnerID,
    dynamic formID,
    String? timeframe,
    int? timezoneID,
    String? eventProfile,
    dynamic eventPitch,
    int? referenceID,
    int? eventSubCategoryID,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
