import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/extensions/extensions.dart';
import '../../../../../domain/entities/entities.dart';
import '../../../../core/utils/view_utils.dart';
import '../../../base/base_page_state.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../resource/resource.dart';
import '../select_participants/select_participants_page.dart';
import '../widgets/conversation_member_tile.dart';
import 'bloc/chat_participants_bloc.dart';

@RoutePage()
class ChatParticipantsPage extends StatefulWidget {
  ChatParticipantsPage(this.conversation, {super.key}) : assert(conversation.isGroup);

  final Conversation conversation;

  @override
  State<ChatParticipantsPage> createState() => _ChatParticipantsPageState();
}

class _ChatParticipantsPageState extends BasePageState<ChatParticipantsPage, ChatParticipantsBloc> {
  @override
  void onBlocInitialed() {
    bloc.conversation = widget.conversation;
    bloc.add(GetAllMembers());
  }

  void _onAddParticipants() {
    context.push<List<User>>(const SelectParticipantsPage()).then((members) {
      if (members != null && members.isNotEmpty) {
        bloc.add(AddMembers(members: members));
      }
    });
  }

  void _onRemoveMember(ConversationMember member) {
    ViewUtils.showAlertDialog<void>(
      context,
      title: context.l10n.chat_participants__remove_participant,
      message: context.l10n.chat_participants__remove_participant_confirmation,
      negativeText: context.l10n.button__cancel,
      positiveText: context.l10n.button__delete,
      onPositivePressed: () {
        context.pop();
        bloc.add(RemoveMember(member: member));
      },
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(),
    );
  }

  CommonAppBar _buildAppBar(BuildContext context) {
    return CommonAppBar(
      text: context.l10n.chat_participants__title,
      actions: [
        AppIcon(
          icon: AppIcons.addMember,
          padding: AppSpacing.edgeInsetsAll16,
          color: AppColors.primary,
          size: Sizes.s20,
          onTap: _onAddParticipants,
        ),
      ],
    );
  }

  Widget _buildBody() {
    return BlocBuilder<ChatParticipantsBloc, ChatParticipantsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return buildCenterLoading();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpacing.gapH16,
            _buildHeader(context, state.members.length),
            AppSpacing.gapH16,
            Expanded(
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ConversationMemberTile(
                    state.members[index],
                    onRemove: bloc.conversation.isOwner(currentUser.contactID!)
                        ? () => _onRemoveMember(state.members[index])
                        : null,
                  );
                },
                itemCount: state.members.length,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context, int length) {
    return Padding(
      padding: AppSpacing.edgeInsetsH16,
      child: Text(
        length == 1
            ? context.l10n.chat_participants__1_participant
            : context.l10n.chat_participants__participants(length),
        style: AppTextStyles.bodyLarge,
      ),
    );
  }
}
