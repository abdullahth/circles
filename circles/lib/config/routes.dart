
import 'package:circles/screens/details-screens/circle/circle-details.dart';
import 'package:circles/screens/home/fetch-circles/home.dart';
import 'package:circles/screens/home/home.dart';
import 'package:circles/screens/welcome-auth-screens/auth/forget-password/forget-password.dart';
import 'package:circles/screens/welcome-auth-screens/auth/signin/signin.dart';
import 'package:circles/screens/welcome-auth-screens/auth/signup/signup.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> routes = {
  SignInPage.route: (context) => SignInPage(),
  SignUpPage.route: (context) => SignUpPage(),
  FetchCircles.route: (context) => FetchCircles(),
  ForgetPassword.route: (context) => ForgetPassword(),
  CircleDetails.route: (context) => CircleDetails(),
  HomePage.route: (context) => HomePage(),
};
