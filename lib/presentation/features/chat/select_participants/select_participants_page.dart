import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../base/base_page_state.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../resource/styles/styles.dart';
import '../widgets/user_search_result_tile.dart';
import 'bloc/select_participants_bloc.dart';

class SelectParticipantsPage extends StatefulWidget {
  const SelectParticipantsPage({
    this.title,
    super.key,
  });

  final String? title;

  @override
  State<SelectParticipantsPage> createState() => _SelectParticipantsPageState();
}

class _SelectParticipantsPageState extends BasePageState<SelectParticipantsPage, SelectParticipantsBloc> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      applyAutoPaddingBottom: true,
      hideKeyboardWhenTouchOutside: true,
      appBar: CommonAppBar(text: widget.title ?? context.l10n.select_participants__title),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        _buildSearchBar(),
        AppSpacing.gapH12,
        const _SelectedMembersContainer(),
        const Expanded(child: _SearchResultList()),
        AppSpacing.gapH12,
        const _StartConversationButton(),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: AppSpacing.edgeInsetsH16,
      child: CustomSearchBar(
        hintText: context.l10n.select_participants__search_hint,
        autofocus: true,
        onChanged: (value) => bloc.add(SearchUser(value)),
      ),
    );
  }
}

class _SelectedMembersContainer extends StatelessWidget {
  const _SelectedMembersContainer();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectParticipantsBloc, SelectParticipantsState>(
      buildWhen: (previous, current) => previous.selectedMembers != current.selectedMembers,
      builder: (context, state) {
        if (state.selectedMembers.isEmpty) {
          return AppSpacing.emptyBox;
        }

        return Container(
          margin: AppSpacing.edgeInsetsOnlyBottom16,
          height: Sizes.s56,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: AppSpacing.edgeInsetsH16,
            itemBuilder: (_, index) => RemovableUserAvatar(
              url: state.selectedMembers[index].profilePhoto ?? '',
              size: Sizes.s52,
              onRemove: () => context.read<SelectParticipantsBloc>().add(RemoveUser(state.selectedMembers[index])),
            ),
            separatorBuilder: (_, __) => AppSpacing.gapW8,
            itemCount: state.selectedMembers.length,
          ),
        );
      },
    );
  }
}

class _SearchResultList extends StatelessWidget {
  const _SearchResultList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectParticipantsBloc, SelectParticipantsState>(
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
            final bool isSelected = state.selectedMembers.contains(state.searchedUsers[index]);

            return UserSearchResultTile(
              state.searchedUsers[index],
              isSelected: isSelected,
              onTap: () => isSelected
                  ? context.read<SelectParticipantsBloc>().add(RemoveUser(state.searchedUsers[index]))
                  : context.read<SelectParticipantsBloc>().add(AddUser(state.searchedUsers[index])),
            );
          },
          itemCount: state.searchedUsers.length,
        );
      },
    );
  }
}

class _StartConversationButton extends StatelessWidget {
  const _StartConversationButton();

  void _onDone(BuildContext context) {
    final selectedParticipants = context.read<SelectParticipantsBloc>().state.selectedMembers;

    context.pop(selectedParticipants);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectParticipantsBloc, SelectParticipantsState>(
      buildWhen: (previous, current) => previous.selectedMembers != current.selectedMembers,
      builder: (context, state) {
        return Padding(
          padding: AppSpacing.edgeInsetsH16,
          child: AppButton.primary(
            label: context.l10n.button__done,
            width: double.infinity,
            height: Sizes.s48,
            onPressed: state.selectedMembers.isNotEmpty ? () => _onDone(context) : null,
          ),
        );
      },
    );
  }
}
