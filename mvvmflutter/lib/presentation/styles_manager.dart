import 'package:flutter/material.dart';
import 'package:mvvmflutter/presentation/font_manager.dart';

TextStyle _getTextStyle(
    double fontSize,
    String fontFamily,
    FontWeight fontWeight,
    Color, color
    ) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color
  );
}

TextStyle getRegularStyle({
    double fontSize = FontSize.s12,
    required Color color
}) {
  return _getTextStyle(
      fontSize,
      FontConstants.fontFamily,
      FontWeightManager.regular,
      Color, color);
}

TextStyle getBoldStyle({
  double fontSize = FontSize.s12,
  required Color color
}) {
  return _getTextStyle(
      fontSize,
      FontConstants.fontFamily,
      FontWeightManager.bold,
      Color, color);
}

TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,
  required Color color
}) {
  return _getTextStyle(
      fontSize,
      FontConstants.fontFamily,
      FontWeightManager.semiBold,
      Color, color);
}

TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  required Color color
}) {
  return _getTextStyle(
      fontSize,
      FontConstants.fontFamily,
      FontWeightManager.light,
      Color, color);
}

TextStyle getMediumStyle({
  double fontSize = FontSize.s12,
  required Color color
}) {
  return _getTextStyle(
      fontSize,
      FontConstants.fontFamily,
      FontWeightManager.medium,
      Color, color);
}