import 'package:circles/auth/google-auth.dart';
import 'package:circles/constants.dart';
// import 'package:circles/screens/auth-screens/auth-pages/signin-successful.dart';
import 'package:circles/screens/auth-screens/auth-pages/signup-body.dart';
import 'package:circles/screens/auth-screens/auth-pages/widgets/form-input-field.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatefulWidget {
  final String routeName = "/SIGN_IN";
  @override
  _SignInBodyState createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
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
            physics: NeverScrollableScrollPhysics(),
            addAutomaticKeepAlives: false,
            children: <Widget>[
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: Container(
                    child: Column(children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "Welcome Back!",
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
                              "Sign In Using Your Email & Password Or Sign In with\n Social Media Account Using the Icons"))
                ])),
              ),
              SizedBox(
                height: proportionateHieght(context, 60),
              ),
              authFormInput(label: "Email", suffixIcon: Icon(Icons.email)),
              authFormInput(label: "Password", suffixIcon: Icon(Icons.lock)),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8, left: 12, right: 12),
                  child: Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      RichText(
                          text: TextSpan(
                              text: "Remember Me",
                              style: TextStyle(
                                  color: cPrimaryColor,
                                  fontStyle: FontStyle.italic))),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SignUpBody().routeName);
                        },
                        child: RichText(
                            text: TextSpan(
                                text: "Forget Password",
                                style: TextStyle(
                                    color: cPrimaryColor,
                                    fontStyle: FontStyle.italic))),
                      ),
                    ],
                  ),
                ),
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
                                  text: "Sign In!",
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
                              text: "Don\'t Have an Account? ",
                              style: TextStyle(color: cTextColor))),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SignUpBody().routeName);
                        },
                        child: RichText(
                            text: TextSpan(
                                text: "SignUp Now!",
                                style: TextStyle(color: cPrimaryColor))),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: proportionateHieght(context, 80),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: "Sign In with Socail Media: ",
                                  style: TextStyle(color: cTextColor))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    // Sign in with Facebook
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 4.5),
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                            text: 'f',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 50)),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: cPrimaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: GestureDetector(
                                  onTap: () {
                                    signInWithGoogle();
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Center(
                                        child: Image.asset(
                                      "assets/icons/google-icon.png",
                                      width: 30,
                                      color: Colors.white,
                                    )),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: cPrimaryColor,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )))
            ]));
  }
}
