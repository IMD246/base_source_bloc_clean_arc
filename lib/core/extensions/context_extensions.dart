import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextExtensions on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;
  double get textScaleFactor => mediaQuery.textScaleFactor;
  double get pixelRatio => mediaQuery.devicePixelRatio;
  bool get isLandscape => mediaQuery.orientation == Orientation.landscape;
  bool get isPortrait => mediaQuery.orientation == Orientation.portrait;
  EdgeInsets get padding => mediaQuery.padding;
  EdgeInsets get viewInsets => mediaQuery.viewInsets;
  EdgeInsets get viewPadding => mediaQuery.viewPadding;
  double get topPadding => padding.top;
  double get bottomPadding => padding.bottom;
  double get leftPadding => padding.left;
  double get rightPadding => padding.right;
  double get topViewInsets => viewInsets.top;
  double get bottomViewInsets => viewInsets.bottom;
  double get leftViewInsets => viewInsets.left;
  double get rightViewInsets => viewInsets.right;

  AppLocalizations get l10n => AppLocalizations.of(this)!;

  // navigator
  StackRouter get router => AutoRouter.of(this);

  Future<T?> push<T extends Object?>(Widget child) =>
      Navigator.of(this).push<T>(MaterialPageRoute(builder: (_) => child));
  Future<T?> pushWithRoute<T extends Object?>(PageRouteInfo route) =>
      router.push(route);
  // Future<void> pushReplacement(Widget child) =>
  //     Navigator.of(this).pushReplacement(MaterialPageRoute(builder: (_) => child));
  Future<void> replace(PageRouteInfo route) => router.replace(route);
  Future<T?> pushNamed<T extends Object?>(String routeName) =>
      router.pushNamed(routeName);
  Future<T?> replaceNamed<T extends Object?>(String routeName) =>
      router.replaceNamed(routeName);
  void pop<T extends Object?>([T? result]) => router.pop(result);
  void popUntilRoot() => router.popUntilRoot();
  void popUntilRouteWithPath(String routeName) =>
      router.popUntilRouteWithPath(routeName);
}
