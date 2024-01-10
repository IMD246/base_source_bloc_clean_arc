import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/configs/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../domain/domain.dart';
import '../../../base/base_page_state.dart';
import '../../../common_blocs/app/app_bloc.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../common_widgets/dropdown_input/dropdown_input.dart';
import '../../../resource/resource.dart';
import 'bloc/personal_information_bloc.dart';

part 'personal_information_widgets.dart';

@RoutePage()
class PersonalInfomationPage extends StatefulWidget {
  const PersonalInfomationPage({super.key});

  @override
  State<PersonalInfomationPage> createState() => _PersonalInfomationPageState();
}

class _PersonalInfomationPageState extends BasePageState<PersonalInfomationPage, PersonalInfomationBloc> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController surNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController linkedInController = TextEditingController();
  final TextEditingController aboutYourselfController = TextEditingController();
  @override
  bool get useLoadingIndicator => true;

  @override
  void dispose() {
    firstNameController.dispose();
    surNameController.dispose();
    phoneController.dispose();
    linkedInController.dispose();
    aboutYourselfController.dispose();
    super.dispose();
  }

  @override
  void onBlocInitialed() {
    super.onBlocInitialed();
    bloc.add(const InitScreen());
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      hideKeyboardWhenTouchOutside: true,
      appBar: CommonAppBar(automaticallyImplyLeading: false),
      body: ListView(
        padding: AppSpacing.edgeInsetsH16,
        physics: const ClampingScrollPhysics(),
        children: [
          const _WelcomeDecorationTexts(),
          AppSpacing.gapH24,
          _PersonalInformationForm(),
          AppSpacing.gapH16,
          const _NextButton(),
          AppSpacing.gapH56,
        ],
      ),
    );
  }
}
