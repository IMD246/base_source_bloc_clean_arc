import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../domain/entities/user.dart';
import '../../../base/base_page_state.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../resource/styles/styles.dart';
import '../../../routing/router/router.dart';
import '../select_participants/select_participants_page.dart';
import 'bloc/create_conversation_bloc.dart';
import 'widgets/creating_conversation.dart';

@RoutePage()
class CreateGroupConversationPage extends StatefulWidget {
  const CreateGroupConversationPage({super.key});

  @override
  State<CreateGroupConversationPage> createState() => _CreateGroupConversationPageState();
}

class _CreateGroupConversationPageState extends BasePageState<CreateGroupConversationPage, CreateConversationBloc> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  void onBlocInitialed() {
    bloc.stream.listen((event) {
      if (event.createdConversation != null) {
        context.replace(ChatDetailRoute(conversation: event.createdConversation!));
      }
    });
  }

  void _onNext() {
    context.push<List<User>>(const SelectParticipantsPage()).then((users) {
      if (users != null && users.isNotEmpty) {
        bloc.add(AddUsers(users));
        bloc.add(const CreateConversation());
      }
    });
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<CreateConversationBloc, CreateConversationState>(
      builder: (context, state) {
        return CommonScaffold(
          applyAutoPaddingBottom: true,
          hideKeyboardWhenTouchOutside: true,
          appBar: CommonAppBar(text: context.l10n.create_conversation__new_group_chat),
          floatingActionButton: _buildNextButton(state),
          body: state.isCreatingConversation ? const CreatingConversationWidget() : _buildGroupNameTextField(),
        );
      },
    );
  }

  Widget _buildGroupNameTextField() {
    return Padding(
      padding: AppSpacing.edgeInsetsH16.copyWith(top: Sizes.s40),
      child: TextField(
        controller: _textEditingController,
        style: AppTextStyles.titleMedium.bold,
        autocorrect: false,
        autofocus: true,
        onChanged: (value) => bloc.add(UpdateGroupName(value.trim())),
        decoration: InputDecoration(
          isDense: true,
          hintText: context.l10n.create_conversation__group_name_hint,
          hintStyle: AppTextStyles.titleMedium.copyWith(color: AppColors.gray),
        ),
      ),
    );
  }

  Widget _buildNextButton(CreateConversationState state) {
    return FloatingActionButton(
      onPressed: state.isGroupNameValid ? _onNext : null,
      backgroundColor: state.isGroupNameValid ? AppColors.primary : AppColors.gray2,
      child: const Icon(Icons.arrow_forward),
    );
  }
}
