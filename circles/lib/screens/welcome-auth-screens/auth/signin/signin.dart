import 'package:circles/screens/welcome-auth-screens/auth/signin/components/body.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  static String route = "SIGN_IN_ROUTE";
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: null, body: Body());
  }
}
