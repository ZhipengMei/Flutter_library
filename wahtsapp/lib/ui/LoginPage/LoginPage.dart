import 'package:flutter/material.dart';
import '../LandingPage/components/background_image_widget.dart';
import '../LandingPage/components/logo_widget.dart';
import '../LandingPage/components/tagline_widget.dart';
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

  // background image with opacity
  final bgOpacity = 0.4;
  final bgImage = AssetImage('assets/images/bloom.png');
  final bgColor = Colors.white;

  // Logo
  final logoColor = Colors.red;
  final logoSize = 50.0;
  final logodata = Icons.chat_bubble_outline;
  EdgeInsetsGeometry logoPadding;

  // tag line
  final taglineFontSize = 25.0;
  final taglineColor = Colors.white;

  Widget body(BuildContext context) {

    // current device's height and width
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    // dynamically change the UI componenets' padding, margin
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      logoPadding = EdgeInsets.only(top: deviceWidth * 0.4);
      // buttonMargin = EdgeInsets.only(left: deviceWidth * 0.1, right: deviceWidth * 0.1, top: deviceWidth * 0.2);

    } else if (MediaQuery.of(context).orientation == Orientation.landscape) {
      logoPadding = EdgeInsets.only(top: deviceWidth * 0.05);
      // buttonMargin = EdgeInsets.only(left: deviceWidth * 0.3, right: deviceWidth * 0.3, top: deviceWidth * 0.1);
    }

    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: backgroundImageWidget(bgColor, bgOpacity, bgImage),
      child: Column(
        children: <Widget>[
          logoWidget(logodata, logoColor, logoSize, logoPadding),
          taglineWidget(taglineColor, taglineFontSize),
          Padding(padding: EdgeInsets.only(bottom: 100.0)),
          labelTextfield(context, false, "EMAIL", Colors.red, Colors.red, 'your_email@something.com'),
          Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
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
