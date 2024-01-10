import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/helpers/helpers.dart';
import '../../../../core/utils/utils.dart';
import '../../../../domain/entities/entities.dart';
import '../../../base/base_page_state.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../resource/resource.dart';
import '../../../routing/router/router.dart';
import '../widgets/widgets.dart';
import 'bloc/chat_detail_bloc.dart';
import 'widgets/chat_input/chat_input.dart';

part 'widgets/message_tile.dart';
part 'widgets/options_bottom_sheet.dart';
part 'widgets/swipe_to_reply_wrapper.dart';
part 'widgets/to_reaction_button.dart';
part 'widgets/message_attachments.dart';
part 'widgets/typing_indicator.dart';
part 'widgets/_loading_more_indicator.dart';

const _kLoadingMoreMessageExtentPixels = 100.0;

@RoutePage()
class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage(this.conversation, {super.key});

  final Conversation conversation;

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends BasePageState<ChatDetailPage, ChatDetailBloc> {
  late LifecycleEventHandler _lifecycleEventHandler;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _lifecycleEventHandler = LifecycleEventHandler(
      resumeCallBack: () async {
        bloc.add(const AppResumed());
      },
      suspendingCallBack: () async {
        bloc.add(const AppSuspended());
      },
    );

    WidgetsBinding.instance.addObserver(_lifecycleEventHandler);

    _scrollController.addListener(() {
      if ((_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent - _kLoadingMoreMessageExtentPixels) &&
          bloc.state.hasNext) {
        bloc.add(const LoadMoreMessages());
      }
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(_lifecycleEventHandler);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void onBlocInitialed() {
    bloc.conversation = widget.conversation;

    bloc.add(const ChatDetailInitiated());
  }

  void _backToConversationList() {
    if (bloc.state.messages.isNotEmpty) {
      return Navigator.pop(context, bloc.state.messages.first);
    }

    Navigator.pop(context);
  }

  void _goToChatOptionsPage() {
    context.pushWithRoute(ChatOptionsRoute(conversation: widget.conversation));
  }

  void _onSend() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      hideKeyboardWhenTouchOutside: true,
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: _buildMessagesArea()),
          AppSpacing.gapH16,
          const _TypingIndicatorWidget(),
          ChatInput(onSend: _onSend),
        ],
      ),
    );
  }

  CommonAppBar _buildAppBar() {
    return CommonAppBar(
      text: widget.conversation.topic,
      onLeadingPressed: _backToConversationList,
      actions: [
        AppIcon(
          icon: AppIcons.viewMore,
          padding: AppSpacing.edgeInsetsAll16,
          onTap: _goToChatOptionsPage,
        ),
      ],
    );
  }

  Widget _buildMessagesArea() {
    return BlocBuilder<ChatDetailBloc, ChatDetailState>(
      buildWhen: (previous, current) =>
          previous.messages != current.messages || previous.isLoading != current.isLoading,
      builder: (context, state) {
        if (state.isLoading && state.messages.isEmpty) {
          return const AppDefaultLoading();
        }

        return ListView.builder(
          controller: _scrollController,
          reverse: true,
          padding: AppSpacing.edgeInsetsH8,
          itemCount: state.messages.length + 1,
          itemBuilder: (context, index) {
            // build loading indicator
            if (index == state.messages.length) {
              if (state.isLoading) {
                return const LoadingMoreMessageIndicator();
              }

              return AppSpacing.emptyBox;
            }

            return _MessageTile(
              state.messages[index],
              key: ValueKey(state.messages[index].id),
              isEndMessageSection: ChatHelper.isEndMessageSection(state.messages, index),
            );
          },
        );
      },
    );
  }
}
