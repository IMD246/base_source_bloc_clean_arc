import 'package:freezed_annotation/freezed_annotation.dart';

part 'typing_indicator.freezed.dart';

@freezed
class TypingIndicator with _$TypingIndicator {
  const TypingIndicator._();

  factory TypingIndicator({
    required int userId,
    required String userFullName,
    required bool isTyping,
  }) = _TypingIndicator;

  @override
  String toString() => 'TypingIndicator(user: $userFullName, isTyping: $isTyping)';
}
