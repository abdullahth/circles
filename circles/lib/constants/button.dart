import 'package:circles/config/dim-config.dart';
import 'package:flutter/material.dart';

Padding buildDefultButton(
    {BuildContext context, String label, Function onPressed}) {
  return Padding(
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.red),
      child: SizedBox(
        height: proptionateHieght(36, MediaQuery.of(context).size.height),
        width: double.infinity,
        child: FlatButton(
          onPressed: onPressed,
          child: RichText(
              text: TextSpan(
                  text: "$label",
                  style: TextStyle(color: Colors.white, fontSize: 24))),
        ),
      ),
    ),
  );
}
