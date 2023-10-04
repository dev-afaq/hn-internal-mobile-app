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
  );

  static ThemeData get appTheme => _appTheme;
}
