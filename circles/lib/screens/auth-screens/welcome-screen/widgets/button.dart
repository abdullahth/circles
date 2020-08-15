import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../transitions.dart';
import '../../auth-screen.dart';

class WelcomeScreenButton extends StatelessWidget {
  const WelcomeScreenButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () {
        Navigator.push(context, BouncyTransistion(widget: AuthScreen()));
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
    );
  }
}
