import 'package:flutter/material.dart';
import 'package:inventory_mobile/themes/app_colors.dart';

class AppTheme {
  static ThemeData buildThemeData() {
    return ThemeData(
      primaryColor: AppColors.primary,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.light,
      highlightColor: AppColors.transparent,
      splashColor: AppColors.transparent,
      appBarTheme: appBarTheme(),
      fontFamily: 'Inter',
    );
  }


  // AppBar
  static AppBarTheme appBarTheme() {
    return AppBarTheme(
      iconTheme: IconThemeData(
        color: AppColors.dark,
        size: 24
      ),
      elevation: 0,
      backgroundColor: AppColors.light,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.dark
      ),
      actionsIconTheme: IconThemeData(
        color: AppColors.dark,
        size: 24,
      ),
    );
  }
}