import 'package:flutter/material.dart';
import 'package:snackbar/snackbarpage.dart';

void main() => runApp(new MaterialApp(
      title: "SnackBar Demo",
      debugShowCheckedModeBanner: false,      
      theme: ThemeData(
        primarySwatch: Colors.teal, 
        accentColor: Colors.lime,
        brightness: Brightness.light,
      ),
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar Demo"),
        centerTitle: true,
        elevation: 0.7,
      ),
      body: SnackBarPage(),
    );
  }
}
