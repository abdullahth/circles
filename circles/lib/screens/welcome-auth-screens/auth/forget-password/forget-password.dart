import 'package:circles/screens/welcome-auth-screens/auth/forget-password/components/body.dart';
import 'package:flutter/material.dart';

import 'components/app-bar.dart';

class ForgetPassword extends StatefulWidget {
  static String route = "FORGET_PASSWORD_ROUTE";
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, appBar: buildAppBar(), body: Body());
  }
}
