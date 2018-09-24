import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Status")),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.edit,
              color: Colors.black,
            ),
            onPressed: () => print("Clicked Status"),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
          FloatingActionButton(
            backgroundColor: Theme.of(context).accentColor,
            child: Icon(
              Icons.done,
              color: Colors.white,
            ),
            onPressed: () => print("Clicked Status"),
          )
        ],
      ),
    );
  }
}
