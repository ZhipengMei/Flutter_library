import 'package:flutter/material.dart';

var expandWidget = Expanded(
  child: Container(
    margin: EdgeInsets.all(8.0),
    decoration: BoxDecoration(border: Border.all(width: 0.25), color: Colors.grey),
  ),
);

Widget connectWithTextWidget(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
    alignment: Alignment.center,
    child: Row(
      children: <Widget>[
        expandWidget,
        Text("OR CONNECT WITH",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            )),
        expandWidget,
      ],
    ),
  );
}
