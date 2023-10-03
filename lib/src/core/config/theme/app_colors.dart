import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static const redColor = Color(0xFFFF0000);
  static const primaryColor = Color(0xFF124c81);
  static const greyColor = Color(0xFF808080);
  static const whiteColor = Color(0xFFFFFFFF);
  static const blackColor = Color(0xFF000000);
  static const Map<int, Color> _swatchDark = {
    0: Color(0xFF000000),
    50: Color(0xFF02080d),
    100: Color(0xFF040f1a),
    200: Color(0xFF051727),
    300: Color(0xFF071e34),
    400: Color(0xFF092641),
    500: Color(0xFF0b2e4d),
    600: Color(0xFF0d355a),
    700: Color(0xFF0e3d67),
    800: Color(0xFF104474),
    900: Color(0xFF124c81),
  };
  static const Map<int, Color> _swatchLight = {
    0: Color(0xFFffffff),
    50: Color(0xFFe7edf2),
    100: Color(0xFFd0dbe6),
    200: Color(0xFFb8c9d9),
    300: Color(0xFFa0b7cd),
    400: Color(0xFF89a6c0),
    500: Color(0xFF7194b3),
    600: Color(0xFF5982a7),
    700: Color(0xFF41709a),
    800: Color(0xFF2a5e8e),
    900: Color(0xFF124c81),
  };
  static get lightThemeColor => const MaterialColor(0xFF124c81, _swatchLight);
  static get darkThemeColor => const MaterialColor(0xFF124c81, _swatchDark);
}
