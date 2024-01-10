import 'package:freezed_annotation/freezed_annotation.dart';

part 'deleted_message_data.freezed.dart';
part 'deleted_message_data.g.dart';

@freezed
class DeletedMessageData with _$DeletedMessageData {
  const factory DeletedMessageData({
    required int discussionID,
  }) = _DeletedMessageData;

  factory DeletedMessageData.fromJson(Map<String, dynamic> json) => _$DeletedMessageDataFromJson(json);
}
