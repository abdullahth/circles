import 'package:flutter/material.dart';

class BouncyTransistion extends PageRouteBuilder {
  Widget widget;
  BouncyTransistion({this.widget})
      : super(
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (BuildContext context,
                Animation<double> animOne,
                Animation<double> animTwo,
                Widget child) {
              animOne =
                  CurvedAnimation(parent: animOne, curve: Curves.elasticInOut);
              return ScaleTransition(
                child: child,
                scale: animOne,
                alignment: Alignment.center,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animOne,
                Animation<double> animTwo) {
              return widget;
            });
}
