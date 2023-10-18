import 'dart:ui';

import 'package:flutter/material.dart';

class CustomColor {
  static const Color primaryColor = Color(0xFF00AEEF);
  static const Color secondaryColor = Color(0xFFFFA800);
  static const Color backgroundColor = Color(0xFFF0F0F0);
  static const Color textColor = Color(0xFF333333);
}

class ThemeClass {
  Color lightPrimaryColor = Color(0xFF00AEEF);
  Color darkPrimaryColor = Color(0xFFFFA800);
  static const Color elevatedButtonLightTextColor = Color(0xFF333333);
  static const MaterialColor primaryMaterial =
      MaterialColor(_primaryPrimaryValue, <int, Color>{
    50: Color(0xFFFEEAED),
    100: Color(0xFFFDC9D2),
    200: Color(0xFFFBA6B4),
    300: Color(0xFFF98296),
    400: Color(0xFFF86780),
    500: Color(_primaryPrimaryValue),
    600: Color(0xFFF64561),
    700: Color(0xFFF53C56),
    800: Color(0xFFF3334C),
    900: Color(0xFFF1243B),
  });
  static const int _primaryPrimaryValue = 0xFFF74C69;

  static const MaterialColor primaryAccent =
      MaterialColor(_primaryAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_primaryAccentValue),
    400: Color(0xFFFFC4CA),
    700: Color(0xFFFFABB3),
  });
  static const int _primaryAccentValue = 0xFFFFF7F8;
}
