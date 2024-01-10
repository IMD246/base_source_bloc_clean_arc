import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/route_constants.dart';
import '../../../core/extensions/extensions.dart';
import '../../common_widgets/common_widgets.dart';
import '../../resource/resource.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: SafeArea(
        child: ListView(
          padding: AppSpacing.edgeInsetsAll16.copyWith(top: Sizes.s56),
          physics: const ClampingScrollPhysics(),
          children: [
            Text(
              context.l10n.welcome__title,
              style: AppTextStyles.s34w400Black.primaryColor.bold,
            ),
            _buildImage(),
            AppSpacing.gapH16,
            Text(
              context.l10n.welcome__desc,
              style: AppTextStyles.bodyLarge,
            ),
            AppSpacing.gapH24,
            Row(
              children: [
                AppButton.outline(
                  label: 'Sign In',
                  onPressed: () => context.pushNamed(RouteList.signIn),
                ),
                AppSpacing.gapW16,
                AppButton.primary(
                  label: 'Sign Up',
                  onPressed: () => context.pushNamed(RouteList.signUp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Padding(
      padding: AppSpacing.edgeInsetsV24,
      child: Assets.images.welcomePage.svg(
        width: 200.w,
        height: 200.w,
      ),
    );
  }
}
