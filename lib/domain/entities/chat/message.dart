// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/configs/di/di.dart';
import '../../../presentation/common_blocs/app/app_bloc.dart';
import '../entities.dart';
part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const Message._();

  factory Message({
    required int id,
    required String content,
    required User sender,
    @Default(<Document>[]) List<Document> documents,
    DateTime? createdAt,
    @JsonKey(includeFromJson: false, includeToJson: false) Message? parentMessage,
    @JsonKey(includeFromJson: false, includeToJson: false) @Default([]) List<Reaction> reactions,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);

  bool get isMyMessage {
    final currentUser = getIt.get<AppBloc>().state.currentUser;

    return currentUser?.contactID == sender.contactID;
  }

  @override
  String toString() => 'Message(id: $id, content: $content)';
}
