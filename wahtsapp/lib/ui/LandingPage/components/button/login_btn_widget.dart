import 'package:flutter/material.dart';
import 'button_widget.dart';

Widget flatBtnWidget(Color buttonColor) {
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
Widget loginBtnWidget(BuildContext context, double deviceWidth, EdgeInsetsGeometry buttonMargin , Color buttonColor) {
  return buttonWidget(context, buttonMargin, deviceWidth, buttonColor, flatBtnWidget(buttonColor));
}
