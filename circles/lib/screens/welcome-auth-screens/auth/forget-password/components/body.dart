import 'package:circles/config/dim-config.dart';
import 'package:circles/constants/button.dart';
import 'package:circles/constants/input-fields.dart';
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
                text: "Password Recovery",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: Colors.black))),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "An Email will be sent to your\n Email Adress ASAP!",
                style: TextStyle(color: Colors.black45, fontSize: 20))),
        SizedBox(
          height: proptionateHieght(80, deviceHieght),
        ),
        // The Form:
        buildFormInputField(
            icon: Icon(Icons.email),
            label: "Email",
            obscureText: false,
            controller: emailController),

        SizedBox(
          height: proptionateHieght(150, deviceHieght),
        ),
        buildDefultButton(
            label: "Sign In!", onPressed: () {}, context: context),
      ],
    );
  }
}
