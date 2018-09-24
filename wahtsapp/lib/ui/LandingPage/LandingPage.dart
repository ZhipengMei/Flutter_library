import 'package:flutter/material.dart';
import './components/background_image.dart';
import './components/tagline.dart';
import './components/logo.dart';
import './components/button/signup_btn.dart';
import './components/button/login_btn.dart';

class LandingPage extends StatelessWidget {
  
  Widget body(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: backgroundImage(Colors.redAccent),
      child: Column(
        children: <Widget>[
          logo(Colors.white, 40.0, EdgeInsets.only(top: 250.0)),
          tagline(Colors.white),
          signUpBtn(context, Colors.white, 150.0),
          loginBtn(context, Colors.redAccent[100], 30.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: body(context));    
  }
}
