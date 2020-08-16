import 'dart:math';

import 'package:circles/screens/auth-screens/welcome-screen/widgets/button.dart';
import 'package:flutter/material.dart';

List<String> welcomeScreenAssets = [
  "assets/images/welcome-screen/one.jpg",
  "assets/images/welcome-screen/two.jpg",
  "assets/images/welcome-screen/three.jpg",
  "assets/images/welcome-screen/four.jpg",
];

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(welcomeScreenAssets[
                      new Random().nextInt(welcomeScreenAssets.length)]),
                  fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.3)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: RichText(
                      text: TextSpan(
                          text: "Circles",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 72,
                            fontWeight: FontWeight.w900,
                          ))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: RichText(
                      text: TextSpan(
                          text: "Connect with Others!",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 36,
                            fontWeight: FontWeight.w900,
                          ))),
                ),
                Spacer(
                  flex: 5,
                ),
                WelcomeScreenButton(),
              ],
            ),
          ),
        ));
  }
}
