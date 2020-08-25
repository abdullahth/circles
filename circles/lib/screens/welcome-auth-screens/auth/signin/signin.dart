import 'package:circles/config/dim-config.dart';
import 'package:circles/constants/button.dart';
import 'package:circles/constants/input-fields.dart';
import 'package:circles/constants/patterns.dart';
import 'package:circles/screens/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  static String route = "SIGN_IN_ROUTE";
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String errorMsg;
  bool errorExist;
  TextEditingController emailController, passwordController;
  @override
  void initState() {
    super.initState();
    errorMsg = '';
    errorExist = false;
    emailController = new TextEditingController();
    passwordController = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHieght = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: null,
        body: ListView(
          children: [
            SizedBox(
              height: proptionateHieght(40, deviceHieght),
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Welcome Back!",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        color: Colors.black))),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text:
                        "Sign In Now and Connect people\nwith the same interests!",
                    style: TextStyle(color: Colors.black45, fontSize: 20))),
            SizedBox(
              height: proptionateHieght(40, deviceHieght),
            ),
            // The Form:
            buildFormInputField(
                icon: Icon(Icons.email),
                label: "Email",
                obscureText: false,
                controller: emailController),
            buildFormInputField(
                label: "Password",
                obscureText: true,
                controller: passwordController,
                icon: Icon(Icons.lock)),
            SizedBox(
              height: proptionateHieght(50, deviceHieght),
            ),

            buildDefultButton(
                label: "Sign In!",
                onPressed: () {
                  signIn(emailController.text.trim(),
                      passwordController.text.trim());
                },
                context: context)
          ],
        ));
  }

  Future<void> signIn(String email, String password) async {
    if (RegExp(emailValidationPattern).hasMatch(email)) {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.trim(), password: password.trim());
      if (FirebaseAuth.instance.currentUser() == null) {
        setState(() {
          errorExist = true;
          errorMsg = "Something Went Wrong";
        });
      } else {
        Navigator.pushNamed(context, HomePage.route);
      }
    } else {
      setState(() {
        errorExist = true;
        errorMsg = "Enter a Valid Email!";
      });
    }
  }
}
