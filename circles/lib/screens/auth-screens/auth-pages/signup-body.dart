import 'package:circles/screens/auth-screens/auth-pages/signin-body.dart';
import 'package:circles/screens/auth-screens/auth-pages/widgets/form-input-field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../constants.dart';
// import 'signin-successful.dart';

class SignUpBody extends StatefulWidget {
  final String routeName = "/SIGN_UP";
  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

// All widgets that have a tap behaviour will be initialized after initialize the all auth issues

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: ListView(
            scrollDirection: Axis.vertical,
            addAutomaticKeepAlives: false,
            physics: NeverScrollableScrollPhysics(),
            // reverse: true,
            children: <Widget>[
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: Container(
                    child: Column(children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "Sign Up Now!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontWeight: FontWeight.w900)),
                  ),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                          text:
                              "Sign Up for Free and meet people\n with the same interests!"))
                ])),
              ),
              SizedBox(
                height: proportionateHieght(context, 30),
              ),
              authFormInput(label: "Email", suffixIcon: Icon(Icons.email)),
              authFormInput(label: "Password", suffixIcon: Icon(Icons.lock)),
              authFormInput(label: "Re-Password", suffixIcon: Icon(Icons.lock)),
              SizedBox(
                height: proportionateHieght(context, 20),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: SizedBox(
                      height: 50,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        onPressed: () {
                          // Navigator.pushNamed(
                          //     context, SignInSuccessful().routeName);
                        },
                        color: cPrimaryColor,
                        splashColor: Colors.transparent,
                        child: Row(
                          children: [
                            Spacer(),
                            RichText(
                              text: TextSpan(
                                  text: "Sign Up!",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900)),
                            ),
                            Spacer()
                          ],
                        ),
                      ))),
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "Already Have an Account ",
                              style: TextStyle(color: cTextColor))),
                      GestureDetector(
                        onTap: () {
                          super.dispose();
                          Navigator.pushNamed(context, SignInBody().routeName);
                        },
                        child: RichText(
                            text: TextSpan(
                                text: "SignIn Now!",
                                style: TextStyle(color: cPrimaryColor))),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: proportionateHieght(context, 70),
              ),
            ]));
  }
}
