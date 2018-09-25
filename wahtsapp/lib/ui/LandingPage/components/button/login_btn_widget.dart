import 'package:flutter/material.dart';
import 'button_widget.dart';

Widget flatBtnWidget(Color buttonColor, Color buttonTextColor) {
  return FlatButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    color: buttonColor,
    highlightColor: buttonColor,
    onPressed: () {
      // TODO
    },
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Text(
        "LOGIN",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: buttonTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

/// BuildContext context, Color buttonColor, double topPadding
Widget loginBtnWidget(BuildContext context, double deviceWidth, EdgeInsetsGeometry loginButtonMargin , Color loginButtonColor, Color loginButtonTextColor) {
  return buttonWidget(context, loginButtonMargin, deviceWidth, loginButtonColor, flatBtnWidget(loginButtonColor, loginButtonTextColor));
}
