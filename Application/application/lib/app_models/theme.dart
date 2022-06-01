import 'package:flutter/material.dart';

class AppTheme {
  final Color primary;
  final Color secondary;
  final Color accent;
  final Color backgroundColor;
  TextStyle? styleOne,
      styleTwo,
      styleThree,
      styleFour,
      styleFive,
      appBarTextStyle;

  AppTheme({
    required this.primary,
    required this.secondary,
    required this.accent,
    required this.backgroundColor,
    this.styleOne,
    this.styleTwo,
    this.styleThree,
    this.styleFour,
    this.styleFive,
    this.appBarTextStyle,
  });
}
