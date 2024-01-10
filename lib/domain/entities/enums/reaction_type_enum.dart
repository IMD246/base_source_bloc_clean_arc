enum ReactionType { like, heart, laughing, wow, sad, angry }

extension ReactionTypeX on ReactionType {
  int get id {
    switch (this) {
      case ReactionType.like:
        return 1;
      case ReactionType.heart:
        return 2;
      case ReactionType.laughing:
        return 3;
      case ReactionType.wow:
        return 4;
      case ReactionType.sad:
        return 5;
      case ReactionType.angry:
        return 6;
      default:
        return 0;
    }
  }
}
