import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums/reaction_type_enum.dart';
import 'user.dart';

part 'reaction.freezed.dart';

@freezed
class Reaction with _$Reaction {
  const factory Reaction({
    required int id,
    required ReactionType type,
    required User createdBy,
  }) = _Reaction;
}
