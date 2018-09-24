import 'package:flutter/material.dart';

/// BuildContext context, Color buttonColor, double topPadding, Widget childWidget
Widget button(BuildContext context, Color buttonColor, double topPadding, Widget childWidget) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(left: 30.0, right: 30.0, top: topPadding),
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