import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin CSTextStyle {
  //logo
  static TextStyle get logoText => GoogleFonts.bebasNeue(
        fontSize: 60,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get mediumLogoText => GoogleFonts.bebasNeue(
        fontSize: 35,
        fontWeight: FontWeight.w400,
      );

  //subtitle
  static TextStyle get boldsubtitleText => GoogleFonts.roboto(
        fontSize: 18,
        fontWeight: FontWeight.w800,
        height: 1.2,
      );

  //body
  static TextStyle get bodyText => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.2,
      );

  static TextStyle get mediumBodyText => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.2,
      );

  static TextStyle get boldBodyText => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w800,
        height: 1.2,
      );

  //small
  static TextStyle get smallMediumText => GoogleFonts.roboto(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 1.2,
      );
}
