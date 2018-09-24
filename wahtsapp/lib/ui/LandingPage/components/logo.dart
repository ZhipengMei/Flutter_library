import 'package:flutter/material.dart';

Widget logo(Color color, double size, EdgeInsetsGeometry padding) {
  return Container(
    padding: padding,
    child: Center(
      child: Icon(
        Icons.chat_bubble_outline,
        color: color,
        size: size,
      ),
    ),
  );
}
