import 'package:circles/screens/auth-screens/auth-pages/signin-body.dart';
import 'package:circles/screens/auth-screens/auth-pages/signup-body.dart';
// import 'package:circles/screens/auth-screens/auth-pages/signin-successful.dart';
import 'package:flutter/material.dart';

// The Routes Here is only the ones to be used it Navigator.pushNamed();
final Map<String, WidgetBuilder> routes = {
  // SignInSuccessful().routeName: (context) => SignInSuccessful(),
  SignUpBody().routeName: (context) => SignUpBody(),
  SignInBody().routeName: (context) => SignInBody(),
};
