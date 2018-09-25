import 'package:flutter/material.dart';
import 'package:tabbar/home.dart';


void main() => runApp(
  MaterialApp(
    title: "Tab Bar",
    theme: ThemeData(
      primaryColor: Colors.teal,
    ),
    home: HomePage(),
  )
);