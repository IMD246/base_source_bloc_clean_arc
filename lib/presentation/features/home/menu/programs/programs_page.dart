import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/extensions/extensions.dart';
import '../../../../../domain/entities/program.dart';
import '../../../../base/base_page_state.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../resource/resource.dart';
import 'bloc/programs_bloc.dart';
import 'program_detail/program_detail_page.dart';

@RoutePage()
class ProgramsPage extends StatefulWidget {
  const ProgramsPage({super.key});

  @override
  State<ProgramsPage> createState() => _ProgramsPageState();
}

class _ProgramsPageState extends BasePageState<ProgramsPage, ProgramsBloc> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void onBlocInitialed() {
    super.onBlocInitialed();
    bloc.add(const ProgramsInitial());
  }

  void _openProgramDetailPage(BuildContext context, Program program) {
    context.push(ProgramDetailsPage(program: program));
  }

  Future<void> _refreshPrograms() async {
    bloc.add(const ProgramsInitial());
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(text: context.l10n.programs__title),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        _buildSearchBar(),
        Expanded(
          child: BlocBuilder<ProgramsBloc, ProgramsState>(
            builder: (context, state) {
              if (state.isLoading) {
                return buildCenterLoading();
              }

              if (state.filteredPrograms.isEmpty) {
                return buildNoProgramsFound();
              }

              return RefreshIndicator(
                onRefresh: _refreshPrograms,
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: Sizes.s20),
                  itemCount: state.filteredPrograms.length,
                  itemBuilder: (context, index) {
                    final program = state.filteredPrograms[index];

                    return _ProgramItem(
                      program: program,
                      onTap: () => _openProgramDetailPage(context, program),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: AppSpacing.edgeInsetsH16,
      child: CustomSearchBar(
        searchController: _searchController,
        hintText: context.l10n.programs__search_hint,
        onChanged: (query) => bloc.add(ProgramsSearch(query)),
        onClear: () {
          _searchController.clear();
          bloc.add(const ProgramsSearch(''));
        },
      ),
    );
  }

  Widget buildNoProgramsFound() {
    return Center(
      child: Text(
        context.l10n.programs__no_programs,
        style: AppTextStyles.titleLarge,
      ),
    );
  }
}

class _ProgramItem extends StatelessWidget {
  const _ProgramItem({required this.program, required this.onTap});

  final Program program;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s20, vertical: Sizes.s16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLogo(),
          const SizedBox(width: Sizes.s16),
          Expanded(child: _buildContents(context)),
        ],
      ),
    ).clickable(onTap);
  }

  Widget _buildContents(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          program.title,
          style: AppTextStyles.titleLarge.bold,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: Sizes.s2),
        Text(
          context.l10n.programs__delivered_by(program.company.name),
          style: AppTextStyles.titleMedium,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: Sizes.s12),
        Text(
          program.overview,
          style: AppTextStyles.bodyMedium,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _buildLogo() {
    return AppNetworkImage(
      program.company.logo,
      fit: BoxFit.cover,
      width: Sizes.s64,
      height: Sizes.s64,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.contain,
          ),
          borderRadius: BorderRadius.circular(Sizes.s8),
          border: Border.all(color: AppColors.lightGray3),
        ),
      ),
    );
  }
}
