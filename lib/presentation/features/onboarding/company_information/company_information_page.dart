import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/route_constants.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/utils/utils.dart';
import '../../../../domain/entities/entities.dart';
import '../../../base/base_page_state.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../common_widgets/date_picker.dart';
import '../../../common_widgets/dropdown_input/dropdown_input.dart';
import '../../../resource/resource.dart';
import 'bloc/company_information_bloc.dart';

part 'company_information_widgets.dart';

@RoutePage()
class CompanyInformationPage extends StatefulWidget {
  const CompanyInformationPage({super.key});

  @override
  State<CompanyInformationPage> createState() => _CompanyInformationPageState();
}

class _CompanyInformationPageState extends BasePageState<CompanyInformationPage, CompanyInformationBloc> {
  @override
  bool get useLoadingIndicator => true;

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      hideKeyboardWhenTouchOutside: true,
      appBar: CommonAppBar(),
      body: ListView(
        padding: AppSpacing.edgeInsetsH16,
        physics: const ClampingScrollPhysics(),
        children: [
          const _CompanyInformationDecorationTexts(),
          AppSpacing.gapH24,
          _CompanyInformationForm(),
          AppSpacing.gapH16,
          const _ContinueButton(),
          AppSpacing.gapH56,
        ],
      ),
    );
  }
}
