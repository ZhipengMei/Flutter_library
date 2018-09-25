import 'package:flutter/material.dart';

Widget flatBtn() {
  return FlatButton(
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
    color: Color(0Xffdb3236),
    onPressed: () {
      print('flat button 1');
    },
    padding: EdgeInsets.only(
      top: 20.0,
      bottom: 20.0,
    ),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          const IconData(0xea88, fontFamily: 'icomoon'),
          color: Colors.white,
          size: 15.0,
        ),
        Text(
          'GOOGLE',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

Widget googleBtnWidget() {
  return Container(
    margin: EdgeInsets.only(left: 140.0, right: 140.0, top: 30.0),
    alignment: Alignment.center,
    child: new Row(
      children: <Widget>[
        new Expanded(
          child: flatBtn(),
        ),
      ],
    ),
  );
}
