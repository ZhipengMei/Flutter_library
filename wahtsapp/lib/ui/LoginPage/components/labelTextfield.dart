import 'package:flutter/material.dart';

// Label text align to the left side of the screen with a padding of 40.0
Widget leftSideLabel(String labeltext, Color color) {
  return Row(
    children: <Widget>[
      Expanded(
          child: Padding(
        padding: EdgeInsets.only(left: 40.0),
        child: Text(
          labeltext,
          style: TextStyle(
              color: color, fontSize: 15.0, fontWeight: FontWeight.bold),
        ),
      ))
    ],
  );
}

// Returns a solid line BoxDecoration
BoxDecoration solidLine(Color color) {
  var solidline = BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: color,
          width: 0.5,
          style: BorderStyle.solid
        )
      )
    );
  
  return solidline;
}

// textfield widget
Widget field(BuildContext context, bool obscureText, Color lineColor, String hintText) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
    alignment: Alignment.center,
    decoration: solidLine(lineColor),
    padding: EdgeInsets.only(left: 0.0, right: 10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: TextField(
            obscureText: obscureText,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey)
            ),
          ),
        )
      ],
    ),
  );
}

// a textfield widget combined with a label text on top and a solid line on the bottom
Widget labelTextfield(BuildContext context, bool obscureText, String labeltext, Color labelColor, Color lineColor, String hintText) {
  return Container(
    child: Column(
      children: <Widget>[
        leftSideLabel(labeltext, labelColor),
        field(context, obscureText, lineColor, hintText),
      ],
    ),
  );
}
