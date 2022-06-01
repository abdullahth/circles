import 'package:application/app_models/theme.dart' as theme;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppTheme {
  late bool isDarkTheme;

  final _themes = {
    'light': theme.AppTheme(
      primary: Color(0xFF),
      secondary: Color(0xFF),
      accent: Color(0xFF),
      backgroundColor: Color(0xFF999999),
      appBarTextStyle: const TextStyle(
        color: Color(0xFF999999),
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.w100,
        fontSize: 24,
        letterSpacing: 2,
      ),
    ),
    'dark': theme.AppTheme(
      primary: const Color(0xFF2351b1),
      secondary: const Color(0xFF4db7f7),
      accent: const Color(0xFFfdfdfd),
      backgroundColor: const Color(0xFF111111),
      appBarTextStyle: const TextStyle(
        color: Color(0xFFfdfdfd),
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.w900,
        fontSize: 24,
        letterSpacing: 2,
      ),
      styleTwo: const TextStyle(
        color: Color(0xFFfdfdfd),
        fontSize: 24,
        fontWeight: FontWeight.w900,
        fontFamily: 'Quicksand',
      ),
      styleFour: const TextStyle(
        color: Color(0xFFfdfdfd),
        fontSize: 12,
        fontWeight: FontWeight.w100,
        fontFamily: 'Quicksand',
      ),
      styleFive: const TextStyle(
        fontSize: 12,
        color: Color(0xFFfdfdfd),
        fontFamily: 'Agency FB',
        fontWeight: FontWeight.w100,
      ),
    ),
  };

  AppTheme(BuildContext ctx) {
    isDarkTheme = GetStorage().read("ThemeCode") == null
        ? true
        : GetStorage().read("ThemeCode") != -1
            ? GetStorage().read("ThemeCode") == 1
            : Theme.of(ctx).brightness == Brightness.dark;
  }

  Color get primary =>
      isDarkTheme ? _themes['dark']!.primary : _themes['light']!.primary;

  Color get secondary =>
      isDarkTheme ? _themes['dark']!.secondary : _themes['light']!.secondary;

  Color get accent =>
      isDarkTheme ? _themes['dark']!.accent : _themes['light']!.accent;

  Color get backgroundColor => isDarkTheme
      ? _themes['dark']!.backgroundColor
      : _themes['light']!.backgroundColor;

  TextStyle? get styleOne =>
      isDarkTheme ? _themes['dark']!.styleOne : _themes['light']!.styleOne;

  TextStyle? get styleTwo =>
      isDarkTheme ? _themes['dark']!.styleTwo : _themes['light']!.styleTwo;

  TextStyle? get styleThree =>
      isDarkTheme ? _themes['dark']!.styleThree : _themes['light']!.styleThree;

  TextStyle? get styleFour =>
      isDarkTheme ? _themes['dark']!.styleFour : _themes['light']!.styleFour;

  TextStyle? get styleFive =>
      isDarkTheme ? _themes['dark']!.styleFive : _themes['light']!.styleFive;

  TextStyle? get appBarTextStyle => isDarkTheme
      ? _themes['dark']!.appBarTextStyle
      : _themes['light']!.appBarTextStyle;
}
