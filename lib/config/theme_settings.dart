import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors_constants.dart';

ThemeData createTheme() {
  return ThemeData(
      primaryColor: Colors.white,
      textTheme: TextTheme(
          headline1: GoogleFonts.rajdhani(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          headline2:
              GoogleFonts.rajdhani(fontSize: 10, fontWeight: FontWeight.w300),
          subtitle2: GoogleFonts.rajdhani(
              color: ColorConstants.textGreyColor,
              fontSize: 12,
              fontWeight: FontWeight.w300)));
}
