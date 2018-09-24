import 'package:flutter/material.dart';

BoxDecoration backgroundImage(Color color) {
  var backgroundImage = BoxDecoration(
    color: color,
    image: DecorationImage(
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
        image: AssetImage('assets/images/bloom.png'),
        fit: BoxFit.cover),
  );

  return backgroundImage;
}
