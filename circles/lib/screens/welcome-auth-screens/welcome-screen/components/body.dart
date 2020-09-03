import 'package:circles/constants/button.dart';
import 'package:circles/screens/welcome-auth-screens/auth/signin/signin.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black12, Colors.black87],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/welcome-image.jpg"))),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12, top: 32),
                      child: RichText(
                          text: TextSpan(
                              text: "Circles",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 72,
                              ))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, top: 12),
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: "Find Your Buddy!",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 24,
                              ))),
                    ),
                  ]),
            ),
            Spacer(
              flex: 5,
            ),
            buildDefultButton(
                context: context,
                label: "Continue!",
                onPressed: () {
                  Navigator.pushNamed(context, SignInPage.route);
                }),
            Spacer()
          ],
        ),
      ),
    );
  }  
}
