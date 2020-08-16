import 'package:circles/screens/auth-screens/auth-pages/components/signin-body.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../transitions.dart';

class WelcomeScreenButton extends StatelessWidget {
  const WelcomeScreenButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: SizedBox(
            height: 50,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () {
                Navigator.push(
                    context, BouncyTransistion(widget: SignInBody()));
              },
              color: cPrimaryColor,
              splashColor: Colors.transparent,
              child: Row(
                children: [
                  Spacer(),
                  RichText(
                    text: TextSpan(
                        text: "Continuo!",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w900)),
                  ),
                  Spacer()
                ],
              ),
            )));
  }
}
