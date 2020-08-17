import 'package:circles/constants.dart';
import 'package:circles/routes.dart';
import 'package:circles/screens/auth-screens/auth-pages/signin-body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circles',
      theme: ThemeData(
        primaryColor: cPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: Colors.white,
      ),
      home: SignInBody(),
      routes: routes,
    );
  }
}
