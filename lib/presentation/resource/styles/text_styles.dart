import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';
import 'app_colors.dart';

/// AppTextStyle format as follows:
/// s[fontSize][fontWeight][Color]
/// Example: s18w400Primary

class AppTextStyles {
  AppTextStyles._();

  // ========= Freestyle text styles =========
  static const s98w300Black = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 98,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
    color: AppColors.black,
  );

  static const s60w300Black = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
    color: AppColors.black,
  );

  static const s48w400Black = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 48,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static const s48w400Primary = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 48,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );

  static const s34w400Black = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: AppColors.black,
  );

  static const s24w500Black = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static const s20w400Gray = TextStyle(
    fontFamily: FontFamily.lato,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    color: AppColors.gray,
  );

  static const s16w500Gray = TextStyle(
    fontFamily: FontFamily.lato,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: AppColors.gray,
  );

  static const s16w400Gray = TextStyle(
    fontFamily: FontFamily.lato,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: AppColors.gray,
  );

  static const s14w500Gray = TextStyle(
    fontFamily: FontFamily.lato,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: AppColors.gray,
  );

  static const s14w400Gray = TextStyle(
    fontFamily: FontFamily.lato,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: AppColors.gray,
  );

  static const s12w400Gray = TextStyle(
    fontFamily: FontFamily.lato,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    color: AppColors.gray,
  );

  static const s10w400Gray = TextStyle(
    fontFamily: FontFamily.lato,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: AppColors.gray,
  );

  // ========= Themed text styles =========
  static const TextStyle displayLarge = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 98,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  );

  static const TextStyle displayMedium = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  );

  static const TextStyle displaySmall = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 48,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle headlineLarge = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 48,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle titleLarge = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  );

  static const TextStyle titleSmall = TextStyle(
    fontFamily: FontFamily.notosans,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontFamily: FontFamily.lato,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: FontFamily.lato,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: FontFamily.lato,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  );

  static const TextStyle labelLarge = TextStyle(
    fontFamily: FontFamily.lato,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: FontFamily.lato,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  );

  static const TextTheme textTheme = TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelSmall: labelSmall,
  );
}
