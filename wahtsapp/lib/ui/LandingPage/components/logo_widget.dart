import 'package:flutter/material.dart';

Widget logoWidget(IconData logodata, Color logoColor, double logoSize, EdgeInsetsGeometry logoPadding) {
  return Container(
    padding: logoPadding,
    child: Center(
      child: Icon(
        logodata,
        color: logoColor,
        size: logoSize,
      ),
    ),
  );
}