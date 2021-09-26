import 'dart:ui';
import 'package:flutter/material.dart';

//convert hexa color to Color object
Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

//Holds all colors used in app
class ColorConstants {
  static Color chipColor = hexToColor('#e0e0e0');
  static Color textGreyColor = hexToColor('#9e9e9e');
}
