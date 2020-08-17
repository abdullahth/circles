import 'package:flutter/material.dart';

import '../../../../constants.dart';

Padding authFormInput({String label, Icon suffixIcon}) {
  return Padding(
    padding: EdgeInsets.all(12),
    child: TextFormField(
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            labelText: "$label",
            hintText: label.split('-')[0] == "Re"
                ? "Re-Enter Your $label!"
                : "Enter Your ${label.split('-')[label.split('-').length - 1]}!",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: cPrimaryColor),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: cPrimaryColor)))),
  );
}
