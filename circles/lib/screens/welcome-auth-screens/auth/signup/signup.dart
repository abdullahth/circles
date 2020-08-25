import 'package:circles/config/dim-config.dart';
import 'package:circles/constants/button.dart';
import 'package:circles/constants/input-fields.dart';
import 'package:circles/constants/patterns.dart';
import 'package:circles/screens/home/home.dart';
import 'package:circles/screens/welcome-auth-screens/auth/signin/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
