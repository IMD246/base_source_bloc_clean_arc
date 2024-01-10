import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_member.freezed.dart';

@freezed
class ConversationMember with _$ConversationMember {
  const ConversationMember._();

  factory ConversationMember({
    required int contactID,
    String? firstName,
    String? surname,
    String? emailAddress,
    String? profilePhoto,
    String? companyName,
    int? discussionID,
    int? discussionMemberID,
    DateTime? dateAccepted,
    @Default(false) bool hasAccepted,
    @Default(false) bool isAdmin,
    DateTime? lastReadDate,
    @Default(0) int unread,
  }) = _ConversationMember;

  String get fullName => '$firstName $surname';
}
