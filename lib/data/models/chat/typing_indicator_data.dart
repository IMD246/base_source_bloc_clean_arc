// {fullName: Bao Nguyen, typing: false, id: 49592}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/chat/typing_indicator.dart';
import '../base/entity_mappable.dart';

part 'typing_indicator_data.freezed.dart';
part 'typing_indicator_data.g.dart';

@freezed
class TypingIndicatorData with _$TypingIndicatorData implements EntityMappable<TypingIndicator> {
  const TypingIndicatorData._();

  const factory TypingIndicatorData({
    required int id,
    required String fullName,
    required bool typing,
  }) = _TypingIndicatorData;

  factory TypingIndicatorData.fromJson(Map<String, dynamic> json) => _$TypingIndicatorDataFromJson(json);

  @override
  TypingIndicator toEntity() {
    return TypingIndicator(
      userId: id,
      userFullName: fullName,
      isTyping: typing,
    );
  }
}
