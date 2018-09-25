import 'package:flutter/material.dart';
import './components/background_image_widget.dart';
import './components/tagline_widget.dart';
import './components/logo_widget.dart';
import './components/button/signup_btn_widget.dart';
import './components/button/login_btn_widget.dart';

class LandingPage extends StatelessWidget {
  Widget body(BuildContext context) {

    // background image with opacity
    final bgOpacity = 0.4;
    final bgImage = AssetImage('assets/images/bloom.png');
    final bgColor = Colors.redAccent;

    // current device's height and width
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    // Logo
    final logoColor = Colors.white;
    final logoSize = 40.0;
    final logodata = Icons.chat_bubble_outline;
    EdgeInsetsGeometry logoPadding;
    
    // tag line
    final taglineFontSize = 25.0;
    final taglineColor = Colors.white;
    
    // Sign up button
    final signupButtonColor = Colors.redAccent;        
    EdgeInsetsGeometry signupButtonMargin;

    // Sign in button
    final loginButtonColor = Colors.redAccent;        
    EdgeInsetsGeometry loginButtonMargin;

    // dynamically change the UI componenets' padding, margin
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      logoPadding = EdgeInsets.only(top: deviceWidth * 0.4);
      signupButtonMargin = EdgeInsets.only(left: deviceWidth * 0.1, right: deviceWidth * 0.1, top: deviceWidth * 0.2);
      loginButtonMargin = EdgeInsets.only(left: deviceWidth * 0.1, right: deviceWidth * 0.1, top: deviceWidth * 0.1);
    } else if (MediaQuery.of(context).orientation == Orientation.landscape) {
      logoPadding = EdgeInsets.only(top: deviceWidth * 0.05);
      signupButtonMargin = EdgeInsets.only(left: deviceWidth * 0.3, right: deviceWidth * 0.3, top: deviceWidth * 0.1);
      loginButtonMargin = EdgeInsets.only(left: deviceWidth * 0.3, right: deviceWidth * 0.3, top: deviceWidth * 0.05);
    }

    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: backgroundImageWidget(bgColor, bgOpacity, bgImage),
      child: Column(
        children: <Widget>[
          logoWidget(logodata, logoColor, logoSize, logoPadding),
          taglineWidget(taglineColor, taglineFontSize),
          signUpBtnWidget(context, deviceWidth, signupButtonMargin, signupButtonColor),
          loginBtnWidget(context, deviceWidth, loginButtonMargin, loginButtonColor)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: body(context));
  }
}
