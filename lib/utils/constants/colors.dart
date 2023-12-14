import 'package:flutter/material.dart';

@immutable
class AppColors {
  const AppColors._();

  //App Basic Colors
  static const primary = Color(0xff4b68ff);
  static const secondry = Color(0xffffe24b);
  static const accent = Color(0xffb0c7ff);

  //Gradiant Colors
  static const linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );

  //Background Colors
  static const light = Color(0xfff6f6f6);
  static const dark = Color(0xff272727);
  static const primaryBg = Color(0xfff3f5ff);

  //Buttons Colors
  static const buttonPrimary = Color(0xff4b68ff);
  static const buttonSecondry = Color(0xff6c757d);
  static const buttonDisabled = Color(0xffc4c4c4);

  //Error and Validation Colors
  static const error = Color(0xffd32f2f);
  static const success = Color(0xff388e3c);
  static const warning = Color(0xfff57c00);
  static const info = Color(0xff1976d2);

  //Neutral Shades
  static const black = Color(0xff232323);
  static const darkerGrey = Color(0xff4f4f4f);
  static const darkGrey = Color(0xff939393);
  static const grey = Color(0xffe0e0e0);
  static const softGrey = Color(0xfff4f4f4);
  static const lightGrey = Color(0xfff9f9f9);
  static const white = Color(0xffffffff);
}
