enum ChannelEventType {
  enrollmentDiscussionAdd,
  enrollmentDiscussionEdit,
  enrollmentDiscussionDelete,
  chatAdd,
  chatEdit,
  chatDelete,
  typingIndicator,
  memberLastSeen,
  memberDelete,
  discussionLike,
  commentLike
}

extension ChannelEventTypeX on ChannelEventType {
  String get name {
    switch (this) {
      case ChannelEventType.enrollmentDiscussionAdd:
        return 'enrollmentDiscussionAdd';
      case ChannelEventType.enrollmentDiscussionEdit:
        return 'enrollmentDiscussionEdit';
      case ChannelEventType.enrollmentDiscussionDelete:
        return 'enrollmentDiscussionDelete';
      case ChannelEventType.chatAdd:
        return 'chatAdd';
      case ChannelEventType.chatEdit:
        return 'chatEdit';
      case ChannelEventType.chatDelete:
        return 'chatDelete';
      case ChannelEventType.typingIndicator:
        return 'typingIndicator';
      case ChannelEventType.memberLastSeen:
        return 'memberLastSeen';
      case ChannelEventType.memberDelete:
        return 'memberDelete';
      case ChannelEventType.discussionLike:
        return 'discussionLike';
      case ChannelEventType.commentLike:
        return 'commentLike';
      default:
        return '';
    }
  }
}
