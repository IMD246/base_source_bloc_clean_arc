import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/utils/utils.dart';
import '../../../../domain/entities/chat/conversation.dart';
import '../../../base/base_page_state.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../routing/router/router.dart';
import '../widgets/widgets.dart';
import 'bloc/chat_options_bloc.dart';
import 'widgets/see_media_option_tile.dart';

part 'group_conversation_options.dart';
part 'private_conversation_options.dart';

@RoutePage()
class ChatOptionsPage extends StatefulWidget {
  const ChatOptionsPage(this.conversation, {super.key});

  final Conversation conversation;

  @override
  State<ChatOptionsPage> createState() => _ChatOptionsPageState();
}

class _ChatOptionsPageState extends BasePageState<ChatOptionsPage, ChatOptionsBloc> {
  @override
  bool get useLoadingIndicator => true;

  @override
  void onBlocInitialed() {
    bloc.conversation = widget.conversation;
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(text: context.l10n.chat_options__title),
      body:
          widget.conversation.isDirectMessage ? const _PrivateConversationOptions() : const _GroupConversationOptions(),
    );
  }

  @override
  Widget buildPageListeners({required Widget child}) {
    return BlocListener<ChatOptionsBloc, ChatOptionsState>(
      listener: (context, state) {
        if (state.hasDeleted) {
          context.popUntilRouteWithPath(RouteList.conversationsList);
        }
      },
      child: child,
    );
  }
}
