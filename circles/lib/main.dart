import 'package:circles/constants.dart';
import 'package:circles/routes.dart';
import 'package:circles/screens/auth-screens/welcome-screen/welcome_screen.dart';
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
      ),
      home: WelcomeScreen(),
      routes: routes,
    );
  }
}
