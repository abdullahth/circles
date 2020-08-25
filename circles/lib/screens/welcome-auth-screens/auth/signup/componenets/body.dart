import 'package:circles/config/dim-config.dart';
import 'package:circles/constants/button.dart';
import 'package:circles/constants/input-fields.dart';
import 'package:circles/screens/home/home.dart';
import 'package:circles/screens/welcome-auth-screens/auth/signin/signin.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController emailController,
      passwordController,
      rePasswordController;
  bool errorExist;
  String errorMsg;
  @override
  void initState() {
    super.initState();
    emailController = new TextEditingController();
    passwordController = new TextEditingController();
    rePasswordController = new TextEditingController();
    errorExist = false;
    errorMsg = '';
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHieght = MediaQuery.of(context).size.height;

    return ListView(
      children: [
        SizedBox(
          height: proptionateHieght(40, deviceHieght),
        ),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Join Us Now!",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: Colors.black))),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text:
                    "Create a new account and join the\n Interests and Meetings Community",
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
        buildFormInputField(
            label: "Re-Password",
            obscureText: true,
            controller: rePasswordController,
            icon: Icon(Icons.lock)),
        SizedBox(
          height: proptionateHieght(50, deviceHieght),
        ),

        buildDefultButton(
            label: "Sign Up!",
            onPressed: () {
              Navigator.pushNamed(context, HomePage.route);
            },
            context: context),

        Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(
                      text: "Already Have an Account? ",
                      style: TextStyle(color: Colors.black, fontSize: 14))),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignInPage.route);
                },
                child: RichText(
                    text: TextSpan(
                        text: "Sign In Now!",
                        style: TextStyle(color: Colors.red, fontSize: 14))),
              )
            ],
          ),
        )
      ],
    );
  }
}
