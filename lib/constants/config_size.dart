import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeihgt;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeihgt = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

double getHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeihgt!;
  return (inputHeight / 815.0) * screenHeight;
}

double getWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth!;
  return (inputWidth / 375.0) * screenWidth;
}
