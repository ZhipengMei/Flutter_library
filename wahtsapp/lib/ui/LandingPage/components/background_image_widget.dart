import 'package:flutter/material.dart';

BoxDecoration backgroundImageWidget(
    Color color, double opacity, AssetImage image) {
  var backgroundImage = BoxDecoration(
    color: color,
    image: DecorationImage(
        colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(opacity), BlendMode.dstATop),
        image: image,
        fit: BoxFit.cover),
  );

  return backgroundImage;
}
