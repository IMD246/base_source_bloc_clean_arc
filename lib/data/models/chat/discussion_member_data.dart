import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/utils.dart';
import '../../../domain/domain.dart';
import '../base/entity_mappable.dart';
import '../helper/avnon_datasource_helper.dart';

part 'discussion_member_data.freezed.dart';
part 'discussion_member_data.g.dart';

@freezed
class DiscussionMemberData with _$DiscussionMemberData implements EntityMappable<ConversationMember> {
  const DiscussionMemberData._();

  const factory DiscussionMemberData({
    int? contactID,
    int? createdUserId,
    String? dateAccepted,
    int? discussionID,
    int? discussionMemberID,
    String? emailAddress,
    String? firstName,
    String? firstname,
    bool? hasAccepted,
    String? companyName,
    bool? isAdmin,
    String? lastReadDate,
    String? profilePhoto,
    String? surname,
    int? unread,
    int? userId,
    bool? selected,
    int? submittedByContactID,
    int? companyID,
    bool? me,
    int? discussionMemberStatusID,
    int? discussionMemberTypeID,
    int? unreadMessageCount,
  }) = _DiscussionMemberData;

  factory DiscussionMemberData.fromJson(Map<String, dynamic> json) => _$DiscussionMemberDataFromJson(json);

  @override
  ConversationMember toEntity() {
    return ConversationMember(
      contactID: contactID!,
      firstName: firstName,
      surname: surname,
      emailAddress: emailAddress,
      profilePhoto: profilePhoto != null ? AvnonDataSourceHelper.addBlobStoragePrefix(profilePhoto!) : null,
      companyName: companyName,
      discussionID: discussionID,
      discussionMemberID: discussionMemberID,
      dateAccepted: dateAccepted != null ? ParseUtils.tryParseUtc(dateAccepted!) : null,
      hasAccepted: hasAccepted ?? false,
      isAdmin: isAdmin ?? false,
      lastReadDate: lastReadDate != null ? ParseUtils.tryParseUtc(lastReadDate!) : null,
      unread: unread ?? 0,
    );
  }
}
