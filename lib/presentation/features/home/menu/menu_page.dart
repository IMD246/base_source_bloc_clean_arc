import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../resource/resource.dart';
import '../../../routing/router/router.dart';

@RoutePage()
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  void _openProgramsPage(BuildContext context) {
    context.pushWithRoute(const ProgramsRoute());
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          _MenuItem(
            icon: AppIcons.programs,
            title: context.l10n.menu__programs,
            onTap: () => _openProgramsPage(context),
          ),
        ],
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final Object icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AppIcon(icon: icon),
      title: Text(
        title,
        style: AppTextStyles.bodyLarge.bold,
      ),
      onTap: onTap,
    );
  }
}
