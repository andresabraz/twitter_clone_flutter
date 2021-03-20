import 'package:flutter/material.dart';

import 'project_colors.dart';

class Styles {
  Styles._();

  static TextStyle get body2 => TextStyle(
        color: ProjectColors.black,
        fontSize: 15,
        letterSpacing: 0.5,
      );

  static TextStyle get body2Gray => TextStyle(
        color: ProjectColors.gray,
        fontSize: 15,
        letterSpacing: 0.5,
      );

  static TextStyle get body2Blue => TextStyle(
        color: ProjectColors.activeBlue,
        fontSize: 15,
        letterSpacing: 0.5,
      );

  static TextStyle get subtitle1 => TextStyle(
        color: ProjectColors.black,
        fontSize: 15,
        letterSpacing: 0.15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get subtitle1Gray => TextStyle(
        color: ProjectColors.gray,
        fontSize: 15,
        letterSpacing: 0.15,
      );

  static TextStyle get subtitle2 => TextStyle(
        color: ProjectColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 14,
        letterSpacing: 0.1,
      );

  static TextStyle get subtitle2White => TextStyle(
        color: ProjectColors.white,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.1,
      );

  static TextStyle get subtitle2Gray => TextStyle(
        color: ProjectColors.gray,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.1,
      );

  static TextStyle get subtitle2Blue => TextStyle(
        color: ProjectColors.activeBlue,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.1,
      );

  static TextStyle get caption => TextStyle(
        color: ProjectColors.gray,
        fontSize: 12,
        letterSpacing: 0.4,
      );

  static TextStyle get h6 => TextStyle(
        color: ProjectColors.black,
        fontWeight: FontWeight.w500,
        fontSize: 20,
        letterSpacing: 0.15,
      );

  static TextStyle get h6Gray => TextStyle(
        color: ProjectColors.gray,
        fontWeight: FontWeight.w500,
        fontSize: 20,
        letterSpacing: 0.15,
      );

  static TextStyle get h5 => TextStyle(
        color: ProjectColors.black,
        fontSize: 24,
        letterSpacing: 0,
      );

  static TextStyle get h5Light => TextStyle(
        color: ProjectColors.black,
        fontSize: 24,
        letterSpacing: 0,
        fontWeight: FontWeight.w300,
      );
}
