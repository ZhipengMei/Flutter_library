import 'package:flutter/material.dart';

/// BuildContext context, Color buttonColor, double topPadding, Widget childWidget
Widget buttonWidget(BuildContext context, EdgeInsetsGeometry buttonMargin, double deviceWidth, Color buttonColor, Widget childWidget) {
  return Container(
    width: deviceWidth,
    margin: buttonMargin,
    alignment: Alignment.center,
    child: Row(
      children: <Widget>[
        Expanded(
          child: childWidget,
        )
      ],
    ),
  );
}