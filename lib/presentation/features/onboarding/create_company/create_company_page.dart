import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../domain/domain.dart';
import '../../../base/base_page_state.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../common_widgets/date_picker.dart';
import '../../../common_widgets/dropdown_input/dropdown_input.dart';
import '../../../resource/resource.dart';
import 'bloc/create_company_bloc.dart';

part 'create_company_widgets.dart';

@RoutePage()
class CreateCompanyPage extends StatefulWidget {
  const CreateCompanyPage({super.key});

  @override
  State<CreateCompanyPage> createState() => _CreateCompanyPageState();
}

class _CreateCompanyPageState extends BasePageState<CreateCompanyPage, CreateCompanyBloc> {
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
        children: const [
          _ProfilePhotoDecorationTexts(),
          AppSpacing.gapH16,
          _CreateCompanyForm(),
          AppSpacing.gapH16,
          _ContinueButton(),
          AppSpacing.gapH56,
        ],
      ),
    );
  }
}
