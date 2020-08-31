import 'package:flutter/material.dart';

import 'componenets/body.dart';

class SignUpPage extends StatefulWidget {
  static String route = "SIGN_UP_ROUTE";
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: null, body: Body());
  }
}
