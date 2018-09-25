import 'package:flutter/material.dart';
import 'button_widget.dart';

Widget outlineBtnWidget() {
  return OutlineButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    color: Colors.yellow[50],
    highlightColor: Colors.white.withAlpha(50),
    onPressed: () {
      // TODO
    },
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Text(
        "SIGN UP",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget signUpBtnWidget(BuildContext context, double deviceWidth, EdgeInsetsGeometry buttonMargin , Color buttonColor) {
  return buttonWidget(context, buttonMargin, deviceWidth, buttonColor, outlineBtnWidget());
}
