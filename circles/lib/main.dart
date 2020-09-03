import 'package:circles/Services/auth-services.dart';
import 'package:circles/config/routes.dart';
import 'package:circles/screens/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

FirebaseUser user;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // If the User == null Navigate to Welcome Screen;
  // Else Fetch All the User Data from he Cloud/ Storage and Navigate to HomePage;
  AuthService.currentUser().then((result) => user = result);
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
        primarySwatch: Colors.red,
        primaryColor: Colors.red,
        accentColor: Colors.red[400],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: routes,
      //  user == null ? WelcomeScreen() : HomeScreen(),
    );
  }
}
