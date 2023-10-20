import 'package:flutter/material.dart';
import '../../../src.dart';

class AppTheme {
  AppTheme._();

  static final _appTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
      ),
      useMaterial3: true,
      primarySwatch: AppColors.lightThemeColor,
      fontFamily: 'Inter',
      splashColor: AppColors.primaryColor.withOpacity(
        0.5,
      ));

  static ThemeData get appTheme => _appTheme;
}
