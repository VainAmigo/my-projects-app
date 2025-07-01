import 'package:drible_app/apps/education_app/theme/ed_theme.dart';
import 'package:flutter/material.dart';

class AppTypography {
  static const black24w600 = TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.blackText);
  static const black16w400 = TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.blackText);
  static const black18w500 = TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.blackText);
  static const black24w300 = TextStyle(fontSize: 24, fontWeight: FontWeight.w300, color: AppColors.blackText);

  static const grey24w300 = TextStyle(fontSize: 24, fontWeight: FontWeight.w300, color: AppColors.greyText);
  static const grey16w400 = TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.greyText);


  static TextStyle grey16w400With({
    double? fontSize,
    Color? color,
  }) {
    return grey16w400.copyWith(
      fontSize: fontSize,
      color: color,
    );
  }
  static TextStyle black18w500With({
    double? fontSize,
    Color? color,
  }) {
    return black18w500.copyWith(
      fontSize: fontSize,
      color: color,
    );
  }
}
