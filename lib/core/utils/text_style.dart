import 'package:flutter/material.dart';
import 'package:karta_app/core/utils/colors.dart';

TextStyle getHeaderStyle({
  Color? color,
  FontWeight? fontWeight,
  double? fontsize,
}) {
  return TextStyle(
    fontSize: fontsize ?? 64,
    fontWeight: fontWeight ?? FontWeight.w800,
    color: color ?? AppColors.primaryColor,
  );
}

TextStyle getTitleStyle({
  Color? color,
  FontWeight? fontWeight,
  double? fontsize,
}) {
  return TextStyle(
    fontSize: fontsize ?? 36,
    fontWeight: fontWeight ?? FontWeight.bold,
    color: color ?? AppColors.whiteColor,
  );
}

TextStyle getBodyStyle(
    {Color? color, FontWeight? fontWeight, double? fontsize}) {
  return TextStyle(
    fontSize: fontsize ?? 16,
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? AppColors.whiteColor,
  );
}

TextStyle getSmallStyle(
    {Color? color, FontWeight? fontWeight, double? fontsize}) {
  return TextStyle(
    fontSize: fontsize ?? 14,
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? AppColors.greyColor,
  );
}
