import 'package:flutter/material.dart';

Padding buildFormInputField(
    {String label,
    String customHint,
    TextEditingController controller,
    bool obscureText,
    Icon icon}) {
  bool reEnter = label.split('-')[0] == "Re";
  return Padding(
    padding: EdgeInsets.all(12),
    child: TextFormField(
        obscureText: obscureText == null ? false : obscureText,
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: icon,
            labelText: "$label",
            hintText: customHint == null
                ? reEnter
                    ? "Re-Enter Your ${label.split('-').last}!"
                    : "Enter Your $label!"
                : customHint,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.red),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.red)))),
  );
}
