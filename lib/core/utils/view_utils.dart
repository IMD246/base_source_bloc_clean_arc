import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../presentation/common_widgets/common_widgets.dart';
import '../../presentation/resource/styles/styles.dart';
import '../constants/constants.dart';
import '../extensions/extensions.dart';

class ViewUtils {
  const ViewUtils._();

  static void showAppSnackBar(
    BuildContext context,
    String message, {
    Duration? duration,
    Color? backgroundColor,
  }) {
    final messengerState = ScaffoldMessenger.maybeOf(context);
    if (messengerState == null) {
      return;
    }
    messengerState.hideCurrentSnackBar();
    messengerState.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration ?? AppDurationConstants.defaultSnackBarDuration,
        backgroundColor: backgroundColor,
        margin: AppSpacing.edgeInsetsAll16,
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.horizontal,
      ),
    );
  }

  static void hideKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  static Future<void> setPreferredOrientations(
    List<DeviceOrientation> orientations,
  ) {
    return SystemChrome.setPreferredOrientations(orientations);
  }

  /// set status bar color & navigation bar color
  static void setSystemUIOverlayStyle(
    SystemUiOverlayStyle systemUiOverlayStyle,
  ) {
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

  static Offset? getWidgetPosition(GlobalKey globalKey) {
    final renderBox = globalKey.currentContext?.findRenderObject() as RenderBox?;

    return renderBox?.localToGlobal(Offset.zero);
  }

  static double? getWidgetWidth(GlobalKey globalKey) {
    final renderBox = globalKey.currentContext?.findRenderObject() as RenderBox?;

    return renderBox?.size.width;
  }

  static double? getWidgetHeight(GlobalKey globalKey) {
    final renderBox = globalKey.currentContext?.findRenderObject() as RenderBox?;

    return renderBox?.size.height;
  }

  // static Future<T?> showGeneralBottomSheet<T>({required Widget child}) {
  //   return showGeneralBottomSheet(child: child);
  // }

  static Future<T?> showBottomSheet<T>(
    BuildContext context, {
    required Widget child,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    Color? barrierColor,
    bool enableDrag = true,
    bool isDismissible = true,
    bool useRootNavigator = true,
    bool isScrollControlled = false,
    EdgeInsets? padding,
  }) {
    return showModalBottomSheet<T>(
      useSafeArea: true,
      context: context,
      builder: (_) => Padding(
        padding: padding ??
            const EdgeInsets.only(
              bottom: Sizes.s16,
              top: Sizes.s12,
            ),
        child: child,
      ),
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape ??
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(Sizes.s20)),
          ),
      clipBehavior: clipBehavior,
      barrierColor: barrierColor,
      enableDrag: enableDrag,
      isDismissible: isDismissible,
      useRootNavigator: useRootNavigator,
      isScrollControlled: isScrollControlled,
    );
  }

  static void copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
  }

  static void showToast(String message) {
    throw UnimplementedError();
    // Fluttertoast.showToast(
    //   msg: message,
    //   toastLength: Toast.LENGTH_SHORT,
    //   gravity: ToastGravity.BOTTOM,
    //   timeInSecForIosWeb: 1,
    //   backgroundColor: AppColors.black,
    //   textColor: AppColors.white,
    //   fontSize: Sizes.s14,
    // );
  }

  static Future<T?> showAlertDialog<T>(
    BuildContext context, {
    required String title,
    required String message,
    String? positiveText,
    String? negativeText,
    VoidCallback? onPositivePressed,
    VoidCallback? onNegativePressed,
  }) {
    return showDialog<T>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          if (negativeText != null)
            TextButton(
              onPressed: onNegativePressed ?? () => Navigator.pop(context),
              child: Text(negativeText, style: AppTextStyles.labelLarge.gray.bold),
            ),
          if (positiveText != null)
            AppButton.primary(
              label: positiveText,
              onPressed: onPositivePressed ?? () => Navigator.pop(context),
            ),
        ],
      ),
    );
  }
}
