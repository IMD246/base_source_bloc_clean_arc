import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain.dart';
import '../base/entity_mappable.dart';

part 'reaction_data.freezed.dart';
part 'reaction_data.g.dart';

@freezed
class ReactionData with _$ReactionData, EntityMappable<Reaction> {
  const ReactionData._();

  const factory ReactionData({
    int? likeID,
    String? emojiRef,
    int? contactID,
    int? likeTypeID,
    int? referenceID,
    int? likeCategoryID,
    String? firstname,
    String? surname,
    String? profilePhoto,
    String? dateSubmitted,
    String? emailAddress,
    String? companyName,
    String? headline,
    int? followLikeID,
  }) = _ReactionData;

  factory ReactionData.fromJson(Map<String, dynamic> json) => _$ReactionDataFromJson(json);

  @override
  Reaction toEntity() {
    return Reaction(
      id: likeID ?? 0,
      type: _parseReactionType(likeTypeID ?? 0),
      createdBy: User(
        contactID: contactID ?? 0,
        firstName: firstname ?? '',
        surname: surname ?? '',
        profilePhoto: profilePhoto ?? '',
        emailAddress: emailAddress ?? '',
        companyName: companyName ?? '',
      ),
    );
  }

  static ReactionType _parseReactionType(int id) {
    return ReactionType.values.firstWhere((element) => element.index == id);
  }
}
