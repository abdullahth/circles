import 'package:flutter/material.dart';

import '../../../../constants.dart';

Padding authFormInput({String label, Icon suffixIcon}) {
  return Padding(
    padding: EdgeInsets.all(12),
    child: TextFormField(
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            labelText: "$label",
            hintText: "Enter Your $label!",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: cPrimaryColor),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: cPrimaryColor)))),
  );
}
