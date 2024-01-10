import 'package:flutter/material.dart';

import '../../../../../../domain/entities/program.dart';
import '../../../../../base/base_page_state.dart';
import '../../../../../common_widgets/common_widgets.dart';
import '../../../../../resource/resource.dart';
import 'bloc/program_details_bloc.dart';
import 'widgets/_program_profile_card.dart';
import 'widgets/_program_profile_infos.dart';

class ProgramDetailsPage extends StatefulWidget {
  const ProgramDetailsPage({required this.program, super.key});

  final Program program;

  @override
  State<ProgramDetailsPage> createState() => _ProgramDetailsPageState();
}

class _ProgramDetailsPageState extends BasePageState<ProgramDetailsPage, ProgramDetailsBloc> {
  Widget get _buildSectionDivider => Container(
        height: Sizes.s4,
        color: AppColors.gray3,
      );

  @override
  void onBlocInitialed() {
    bloc.add(ProgramDetailsInitial(widget.program));
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(text: widget.program.title),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          const ProgramProfileCard(),
          _buildSectionDivider,
          const ProgramInformationSection(),
        ],
      ),
    );
  }
}
