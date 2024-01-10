import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../base/base_page_state.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../resource/resource.dart';
import 'bloc/onboarding_welcome_bloc.dart';

part 'onboarding_welcome_widgets.dart';

@RoutePage()
class WelcomOnboardingPage extends StatefulWidget {
  const WelcomOnboardingPage({super.key});

  @override
  State<WelcomOnboardingPage> createState() => _WelcomOnboardingPageState();
}

class _WelcomOnboardingPageState extends BasePageState<WelcomOnboardingPage, WelcomeOnboardingBloc> {
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
          _GetStartButton(),
          AppSpacing.gapH56,
        ],
      ),
    );
  }
}
