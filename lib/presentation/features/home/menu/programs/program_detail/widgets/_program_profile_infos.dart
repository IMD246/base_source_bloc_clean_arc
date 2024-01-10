import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/extensions/extensions.dart';
import '../../../../../../common_widgets/common_widgets.dart';
import '../../../../../../resource/resource.dart';
import '../bloc/program_details_bloc.dart';

part '_program_feed_tab_view.dart';
part '_overview_tab_view.dart';

class ProgramInformationSection extends StatefulWidget {
  const ProgramInformationSection({super.key});

  @override
  State<ProgramInformationSection> createState() => _ProgramInformationSectionState();
}

class _ProgramInformationSectionState extends State<ProgramInformationSection> {
  final ValueNotifier<int> _selectedChipIndex = ValueNotifier(0);
  late final List<String> _tabBarTitles;
  final _tabs = const [
    OverviewTabView(),
    FeedTabView(),
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _tabBarTitles = [
      context.l10n.program_details__overview,
      context.l10n.program_details__feed,
    ];
  }

  @override
  void dispose() {
    _selectedChipIndex.dispose();
    super.dispose();
  }

  void _selectTab(int tabIndex) {
    _selectedChipIndex.value = tabIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: AppSpacing.edgeInsetsH16,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppSpacing.gapH12,
          _buildChipsSection(context),
          AppSpacing.gapH8,
          _buildTabViewSection(context),
        ],
      ),
    );
  }

  Widget _buildChipsSection(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _tabBarTitles.length,
        itemBuilder: (context, index) => _buildChip(
          context,
          index,
          _tabBarTitles[index],
        ),
        separatorBuilder: (BuildContext context, int index) {
          return AppSpacing.gapH8;
        },
      ),
    );
  }

  Widget _buildChip(BuildContext context, int index, String text) {
    return ValueListenableBuilder(
      valueListenable: _selectedChipIndex,
      builder: (_, int tabIndex, __) {
        return AppChip(
          label: text,
          isActive: tabIndex == index,
          onPressed: () => _selectTab(index),
        );
      },
    );
  }

  Widget _buildTabViewSection(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _selectedChipIndex,
      builder: (_, int tabIndex, __) {
        return _tabs[tabIndex];
      },
    );
  }
}
