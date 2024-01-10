import 'package:flutter/material.dart';

import '../../core/extensions/extensions.dart';
import '../../core/utils/utils.dart';
import '../resource/styles/styles.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({
    required this.body,
    Key? key,
    this.appBar,
    this.drawer,
    this.floatingActionButton,
    this.backgroundColor = AppColors.white,
    this.hideKeyboardWhenTouchOutside = false,
    this.applyAutoPaddingBottom = false,
  }) : super(key: key);

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final Widget? drawer;

  final Color backgroundColor;
  final bool hideKeyboardWhenTouchOutside;
  final bool applyAutoPaddingBottom;

  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      drawer: drawer,
      floatingActionButton: floatingActionButton,
      body: Padding(
        padding: _getBottomPadding(context),
        child: body,
      ),
    );

    return hideKeyboardWhenTouchOutside
        ? GestureDetector(
            onTap: () => ViewUtils.hideKeyboard(context),
            child: scaffold,
          )
        : scaffold;
  }

  EdgeInsetsGeometry _getBottomPadding(BuildContext context) {
    if (!applyAutoPaddingBottom) {
      return EdgeInsets.zero;
    }

    var bottomPadding = Sizes.s16;
    if (context.bottomPadding != 0) {
      bottomPadding = context.bottomPadding;
    }

    return EdgeInsets.only(bottom: bottomPadding);
  }
}
