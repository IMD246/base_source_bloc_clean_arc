import 'package:flutter/material.dart';

import '../../presentation/resource/styles/styles.dart';

extension TextStyleExtensions on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get regular => copyWith(fontWeight: FontWeight.normal);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);

  TextStyle toColor(Color color) => copyWith(color: color);
  TextStyle get primaryColor => copyWith(color: AppColors.primary);
  TextStyle get gray => copyWith(color: AppColors.gray);
  TextStyle get white => copyWith(color: AppColors.white);
}
