import 'package:flutter/material.dart';
import 'button.dart';

Widget flatBtn(Color buttonColor) {
  return FlatButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    color: Colors.white,
    highlightColor: Colors.white,
    onPressed: () {
      // TODO
    },
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Text(
        "LOGIN",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: buttonColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

/// BuildContext context, Color buttonColor, double topPadding
Widget loginBtn(BuildContext context, Color buttonColor, double topPadding) {
  return button(context, buttonColor, topPadding, flatBtn(buttonColor));
}
