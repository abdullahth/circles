import 'package:circles/screens/home/home.dart';
import 'package:circles/screens/welcome-auth-screens/auth/signin/signin.dart';
import 'package:circles/screens/welcome-auth-screens/auth/signup/signup.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> routes = {
  SignInPage.route: (context) => SignInPage(),
  SignUpPage.route: (context) => SignUpPage(),
  HomePage.route: (context) => HomePage()
};
