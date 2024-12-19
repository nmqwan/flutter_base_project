import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UITextStyle {
  static TextStyle _textStyle({
    required String fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
  }) =>
      GoogleFonts.getFont(
        fontFamily,
        height: height ?? 1.0,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontStyle: fontStyle ?? FontStyle.normal,
        fontSize: fontSize ?? 14,
        decoration: textDecoration ?? TextDecoration.none,
        backgroundColor: backgroundColor,
      );

  static TextStyle robotoBoldStyle({
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
  }) =>
      _textStyle(
        fontFamily: 'Roboto',
        color: color,
        backgroundColor: backgroundColor,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontStyle: fontStyle,
        textDecoration: textDecoration,
      );

  static TextStyle robotoMediumStyle({
    Color? color,
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
  }) =>
      _textStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontStyle: fontStyle,
        textDecoration: textDecoration,
      );

  static TextStyle mulishBoldStyle({
    Color? color,
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
  }) =>
      _textStyle(
        fontFamily: 'Mulish',
        color: color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight ?? FontWeight.bold,
        fontStyle: fontStyle,
        textDecoration: textDecoration,
      );

  static TextStyle mulishMediumStyle({
    Color? color,
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
  }) =>
      _textStyle(
        fontFamily: 'Mulish',
        color: color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontStyle: fontStyle,
        textDecoration: textDecoration,
      );

  static TextStyle ibmBoldStyle({
    Color? color,
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
  }) =>
      _textStyle(
        fontFamily: 'IBM Plex Sans',
        color: color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontStyle: fontStyle,
        textDecoration: textDecoration,
      );

  static TextStyle ibmMediumStyle({
    Color? color,
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
  }) =>
      _textStyle(
        fontFamily: 'IBM Plex Sans',
        color: color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontStyle: fontStyle,
        textDecoration: textDecoration,
      );

  static TextStyle heading1({
    Color color = Colors.black,
    Color? backgroundColor,
    double? fontSize = 16,
    double? height,
    FontWeight? fontWeight = FontWeight.w400,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration? textDecoration,
  }) =>
      robotoBoldStyle(
        fontSize: fontSize,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        height: height,
        textDecoration: textDecoration,
        backgroundColor: backgroundColor,
      );

  static TextStyle heading2({
    Color color = Colors.black,
    double? fontSize = 14,
    double? height,
    FontWeight? fontWeight = FontWeight.w400,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration? textDecoration,
  }) =>
      robotoBoldStyle(
        fontSize: fontSize,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        height: height,
        textDecoration: textDecoration,
      );

  static TextStyle content({
    Color color = Colors.black,
    double? fontSize = 14,
    double? height,
    FontWeight? fontWeight = FontWeight.w400,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration? textDecoration,
  }) =>
      robotoBoldStyle(
        fontSize: fontSize,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        height: height,
        textDecoration: textDecoration,
      );

  static TextStyle barlowMediumStyle({
    Color? color,
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
  }) =>
      _textStyle(
        fontFamily: 'Barlow',
        color: color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontStyle: fontStyle,
        textDecoration: textDecoration,
      );

  static TextStyle barlowBoldStyle({
    Color? color,
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
  }) =>
      _textStyle(
        fontFamily: 'Barlow',
        color: color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontStyle: fontStyle,
        textDecoration: textDecoration,
      );

  static TextStyle interMediumStyle({
    Color? color,
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
  }) =>
      _textStyle(
        fontFamily: 'Inter',
        color: color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontStyle: fontStyle,
        textDecoration: textDecoration,
      );

  static TextStyle interBoldStyle({
    Color? color,
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
  }) =>
      _textStyle(
        fontFamily: 'Inter',
        color: color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontStyle: fontStyle,
        textDecoration: textDecoration,
      );

  static TextStyle poppinsMediumStyle({
    Color? color,
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
  }) =>
      _textStyle(
        fontFamily: 'Poppins',
        color: color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontStyle: fontStyle,
        textDecoration: textDecoration,
      );

  static TextStyle sfProDisplayStyle({
    Color? color,
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? letterSpacing,
  }) =>
      TextStyle(
        fontFamily: '.SF Pro Display',
        color: color,
        height: height ?? 1.0,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontStyle: fontStyle ?? FontStyle.normal,
        fontSize: fontSize ?? 14,
        decoration: textDecoration ?? TextDecoration.none,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        letterSpacing: letterSpacing,
      );

  static TextStyle sfProDisplayStyleS12W400({
    Color? color,
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
  }) =>
      TextStyle(
        fontFamily: '.SF Pro Display',
        color: color,
        height: height ?? 1.0,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontStyle: fontStyle ?? FontStyle.normal,
        fontSize: fontSize ?? 12,
        decoration: textDecoration ?? TextDecoration.none,
      );
}
