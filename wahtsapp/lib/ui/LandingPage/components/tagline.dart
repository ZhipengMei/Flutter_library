import 'package:flutter/material.dart';

Widget tagline(Color color) {
  return Container(
    padding: EdgeInsets.only(top: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Stay",
          style: TextStyle(color: color, fontSize: 25.0),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),        
        Text(
          "Connected",
          style: TextStyle(
            color: color,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
