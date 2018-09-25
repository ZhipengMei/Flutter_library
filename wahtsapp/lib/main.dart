import 'package:flutter/material.dart';
import './ui/LandingPage/LandingPage.dart';
import './ui/LoginPage/LoginPage.dart';

void main() => runApp(MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {

  final PageController _controller = PageController(initialPage: 1, viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: PageView(
        controller: _controller,
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          LandingPage(),
          LoginPage(),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
