import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../domain/entities/user.dart';
import '../../../base/base_page_state.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../resource/styles/styles.dart';
import '../../../routing/router/router.dart';
import '../widgets/widgets.dart';
import 'bloc/create_conversation_bloc.dart';
import 'widgets/creating_conversation.dart';
part 'widgets/new_chat_option_tile.dart';

@RoutePage()
class CreateConversationPage extends StatefulWidget {
  const CreateConversationPage({super.key});

  @override
  State<CreateConversationPage> createState() => _CreateConversationPageState();
}

class _CreateConversationPageState extends BasePageState<CreateConversationPage, CreateConversationBloc> {
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

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      applyAutoPaddingBottom: true,
      hideKeyboardWhenTouchOutside: true,
      appBar: CommonAppBar(text: context.l10n.create_conversation__title),
      body: BlocBuilder<CreateConversationBloc, CreateConversationState>(
        builder: (context, state) {
          if (state.isCreatingConversation) {
            return const CreatingConversationWidget();
          }

          return Column(
            children: [
              _buildSearchBar(),
              Expanded(child: state.isInitial ? const _NewChatOptionsContainer() : const _SearchResultList()),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: AppSpacing.edgeInsetsH16.copyWith(bottom: Sizes.s12),
      child: CustomSearchBar(
        hintText: context.l10n.create_conversation__search_hint,
        onChanged: (value) => bloc.add(SearchUser(value)),
      ),
    );
  }
}

class _SearchResultList extends StatelessWidget {
  const _SearchResultList();

  void _onStartConversation(BuildContext context, User selectedUser) {
    context.read<CreateConversationBloc>().add(AddUsers([selectedUser]));
    context.read<CreateConversationBloc>().add(const CreateConversation());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateConversationBloc, CreateConversationState>(
      buildWhen: (previous, current) =>
          previous.searchedUsers != current.searchedUsers ||
          previous.isSearching != current.isSearching ||
          previous.selectedMembers != current.selectedMembers,
      builder: (context, state) {
        if (state.isSearching) {
          return const Center(child: AppDefaultLoading());
        }

        return ListView.builder(
          physics: const ClampingScrollPhysics(),
          itemBuilder: (_, index) {
            return UserSearchResultTile(
              state.searchedUsers[index],
              onTap: () => _onStartConversation(context, state.searchedUsers[index]),
            );
          },
          itemCount: state.searchedUsers.length,
        );
      },
    );
  }
}

class _NewChatOptionsContainer extends StatelessWidget {
  const _NewChatOptionsContainer();

  void _onCreateNewGroupChat(BuildContext context) {
    context.replace(const CreateGroupConversationRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _NewChatOptionTile(
          icon: AppIcons.peopleLight,
          label: context.l10n.create_conversation__new_group_chat,
          onTap: () => _onCreateNewGroupChat(context),
        ),
      ],
    );
  }
}
