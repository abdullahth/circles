import 'package:circles/config/dim-config.dart';
import 'package:circles/constants/button.dart';
import 'package:circles/constants/input-fields.dart';
import 'package:circles/screens/welcome-auth-screens/auth/forget-password/forget-password.dart';
import 'package:circles/screens/welcome-auth-screens/auth/signup/signup.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String errorMsg;
  bool errorExist, remember;
  TextEditingController emailController, passwordController;
  @override
  void initState() {
    super.initState();
    errorMsg = '';
    remember = true;
    errorExist = false;
    emailController = new TextEditingController();
    passwordController = new TextEditingController();
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
        Padding(
          padding: EdgeInsets.only(left: 12, bottom: 12, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  value: remember,
                  onChanged: (value) {
                    setState(() {
                      remember = false;
                    });
                  }),
              RichText(
                  text: TextSpan(
                      text: "Remember Me!",
                      style: TextStyle(color: Colors.red, fontSize: 14))),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgetPassword.route);
                },
                child: RichText(
                    text: TextSpan(
                        text: "Forget Password!",
                        style: TextStyle(color: Colors.red, fontSize: 14))),
              )
            ],
          ),
        ),

        buildDefultButton(
            label: "Sign In!", onPressed: () {}, context: context),
        Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(
                      text: "New to Circles? ",
                      style: TextStyle(color: Colors.black, fontSize: 14))),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignUpPage.route);
                },
                child: RichText(
                    text: TextSpan(
                        text: "Sign Up Now!",
                        style: TextStyle(color: Colors.red, fontSize: 14))),
              )
            ],
          ),
        )
      ],
    );
  }
}
