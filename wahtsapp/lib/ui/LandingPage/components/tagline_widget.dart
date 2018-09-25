import 'package:flutter/material.dart';

Widget taglineWidget(Color taglineColor, double taglineFontSize) {
  return Container(
    padding: EdgeInsets.only(top: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Stay",
          style: TextStyle(color: taglineColor, fontSize: taglineFontSize),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),        
        Text(
          "Connected",
          style: TextStyle(
            color: taglineColor,
            fontSize: taglineFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
