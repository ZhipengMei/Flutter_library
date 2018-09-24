import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
        body: Center(child: Text("Calls")),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            Icons.add_call,
            color: Colors.white,
          ),
          onPressed: () => print("Clicked Calls"),
        ));
  }
}