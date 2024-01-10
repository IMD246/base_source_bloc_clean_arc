import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/extensions/date_time_extensions.dart';
import '../../core/utils/parse_utils.dart';
import '../../domain/entities/event.dart';
import 'base/entity_mappable.dart';

part 'event_data.freezed.dart';
part 'event_data.g.dart';

@freezed
class EventData with _$EventData implements EntityMappable<Event> {
  const EventData._();

  const factory EventData({
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
  }) = _EventData;

  factory EventData.fromJson(Map<String, dynamic> json) =>
      _$EventDataFromJson(json);

  @override
  Event toEntity() {
    return Event(
      eventID: eventID,
      eventDelegateID: eventDelegateID,
      videoCallProviderID: videoCallProviderID,
      delegatePhoto: delegatePhoto,
      eventTitle: eventTitle,
      zoomMeetingID: zoomMeetingID,
      firstname: firstname,
      surname: surname,
      contactID: contactID,
      eventCategoryID: eventCategoryID,
      eventDelegateTypeID: eventDelegateTypeID,
      endTime: ParseUtils.parseDateTime(endTime!)
          .toStringWithFormat('dd MMM yyyy, HH:mm'),
      startTime: ParseUtils.parseDateTime(startTime!)
          .toStringWithFormat('dd MMM yyyy, HH:mm'),
      eventDelegateStatusID: eventDelegateStatusID,
      feedbackSummary: feedbackSummary,
      overallScore: overallScore,
      reviewCount: reviewCount,
      distributedReviews: distributedReviews,
      programInstanceID: programInstanceID,
      programInstanceTitle: programInstanceTitle,
      amountSpent: amountSpent,
      zoomStartURL: zoomStartURL,
      taskStatusID: taskStatusID,
      attended: attended,
      companyID: companyID,
      menteeCompany: menteeCompany,
      delegateCompany: delegateCompany,
      delegateFeedbackSubmitted: delegateFeedbackSubmitted,
      taskOwnerID: taskOwnerID,
      formID: formID,
      timeframe: timeframe,
      timezoneID: timezoneID,
      eventProfile: eventProfile,
      eventPitch: eventPitch,
      referenceID: referenceID,
      eventSubCategoryID: eventSubCategoryID,
    );
  }
}
