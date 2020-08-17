import 'package:flutter/material.dart';

// Colors
final cPrimaryColor = Color(0xFF248501);
final cSecondryColor = Color(0xFF629C06);
final cAccentColor = Color(0xFF069C10);
final cBottomNavigationActiveColor = cAccentColor;
final cImageCircularBorderColor =
    LinearGradient(colors: [cPrimaryColor, cSecondryColor]);
final cTextColor = Color(0xFF464E53);

final cDarkModePrimaryColor = cPrimaryColor;
final cDarkModeSecondryColor = cSecondryColor;
final cDarkModeBottomNavigationActiveColor = cBottomNavigationActiveColor;
final cDarkModeImageCircularBorderColor = Colors.white;
final cDarkModeAccentColorColor = cAccentColor;
final cDarkModeTextColor = Colors.white;

final defultPadding = 12.0;

// Size Config Methods will be here instead of creating new file
double proportionateHieght(BuildContext context, double inputHieght) {
  final double DEVICE_HIEGHT = MediaQuery.of(context).size.height;

  return (inputHieght / 812.0) * DEVICE_HIEGHT;
}

double proportionateWidth(BuildContext context, double inputWidth) {
  final double DEVICE_WIDTH = MediaQuery.of(context).size.width;

  return (inputWidth / 812.0) * DEVICE_WIDTH;
}
