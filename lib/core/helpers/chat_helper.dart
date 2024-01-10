import '../../domain/entities/entities.dart';
import '../../presentation/resource/resource.dart';
import '../extensions/extensions.dart';

const kMediaMaxHeightScreenPercentage = 0.3;
const kMediaMaxWidthScreenPercentage = 0.6;
const kTextMessageMinWidth = Sizes.s32;
const kTextMaxWidthScreenPercentage = 0.65;

const _kEndMessageSectionTime = 5;

class ChatHelper {
  const ChatHelper._();

  static String formatChatTime(DateTime? createdAt) {
    if (createdAt == null) {
      return '';
    }

    if (createdAt.isToday) {
      return createdAt.toStringWithFormat('HH:mm');
    } else if (createdAt.isLastWeek) {
      return createdAt.toStringWithFormat('EEE');
    } else {
      return createdAt.toStringWithFormat('dd/MM/yyyy');
    }
  }

  static AssetGenImage getReactionGif(ReactionType reaction) {
    switch (reaction) {
      case ReactionType.like:
        return Assets.reactions.like;
      case ReactionType.heart:
        return Assets.reactions.love;
      case ReactionType.laughing:
        return Assets.reactions.haha;
      case ReactionType.wow:
        return Assets.reactions.wow;
      case ReactionType.sad:
        return Assets.reactions.sad;
      case ReactionType.angry:
        return Assets.reactions.angry;
    }
  }

  static AssetGenImage getReactionIcon(ReactionType reaction) {
    switch (reaction) {
      case ReactionType.like:
        return Assets.reactions.icLikeFill;
      case ReactionType.heart:
        return Assets.reactions.love2;
      case ReactionType.laughing:
        return Assets.reactions.haha2;
      case ReactionType.wow:
        return Assets.reactions.wow2;
      case ReactionType.sad:
        return Assets.reactions.sad2;
      case ReactionType.angry:
        return Assets.reactions.angry2;
    }
  }

  static bool isEndMessageSection(List<Message> messages, int index) {
    return index == 0 ||
        messages[index].sender.contactID != messages[index - 1].sender.contactID ||
        messages[index].createdAt!.difference(messages[index - 1].createdAt!).inMinutes > _kEndMessageSectionTime;
  }
}
