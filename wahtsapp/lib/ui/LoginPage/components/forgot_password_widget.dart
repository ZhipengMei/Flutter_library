import 'package:flutter/material.dart';

Widget forgotPasswordWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: FlatButton(
          child: Text(
            'Forgot Password',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
            textAlign: TextAlign.end,
          ),
          onPressed: (){
            // TODO
          },
        ),
      ),        
    ],
  );
}