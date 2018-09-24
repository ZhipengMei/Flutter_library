import 'package:flutter/material.dart';
import '../LandingPage/components/background_image.dart';
import '../LandingPage/components/logo.dart';
import '../LandingPage/components/tagline.dart';
import './components/labelTextfield.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // var emailField;

  // @override
  // void initState() {
  //   super.initState();

  //   setState(() {te
  //     emailField = labelTextfield("EMAIL");
  //   });
  // }

  Widget body(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: backgroundImage(Colors.white),
      child: Column(
        children: <Widget>[
          logo(Colors.red, 50.0, EdgeInsets.only(left: 150.0, top: 150.0, right: 150.0)),
          tagline(Colors.red),
          Padding(padding: EdgeInsets.only(bottom: 100.0)),
          labelTextfield(context, false, "EMAIL", Colors.red, Colors.red, 'your_email@something.com'),
          Divider(height: 24.0),
          labelTextfield(context, true, "PASSWORD", Colors.red, Colors.red, '•••••••••'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: body(context));
  }
}
