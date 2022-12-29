import 'package:flutter/material.dart';


const double defaultPadding = 16;


class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
  }
}
double getResponsiveScreenWidth(inputWidth)
{
  double? screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 100) * screenWidth;

}
double getResponsiveScreenHeight(inputWidth)
{
  double? screenHeight = SizeConfig.screenHeight;
  return (inputWidth / 100) * screenHeight;

}