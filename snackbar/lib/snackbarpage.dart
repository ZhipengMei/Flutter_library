import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  final SnackBar snackBar = SnackBar(
    content: Text("Hello World"),
    duration: Duration(seconds: 5),
    action: SnackBarAction(
      label: "Dismiss",
      onPressed: (){
        print("Click on Dismiss")
      }
    )
  );

  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
          child: Text(
            "Click Me",
            style: TextStyle(
              color: Colors.white
            ),
          ),
          color: Theme.of(context).primaryColor,
          onPressed: () {
            Scaffold.of(context).showSnackBar(snackBar);
          },
        ),
      );
  }
}