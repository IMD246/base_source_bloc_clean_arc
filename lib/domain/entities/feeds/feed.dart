import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities.dart';

part 'feed.freezed.dart';

@freezed
class Feed with _$Feed {
  const factory Feed({
    required String id,
    required String content,
    required User creator,
    required DateTime createdAt,
    required int reactionsCount,
    required bool isReacted,
    required int commentsCount,
    @Default([]) List<Document> attachments,
    @Default([]) List<Reaction> reactions,
    @Default([]) List<Comment> comments,
  }) = _Feed;
}
