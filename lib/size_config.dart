import 'package:flutter/material.dart';

class SizeConfig {
   MediaQueryData _mediaQueryData = MediaQueryData();
   double screenWidth = 0;
   double screenHeight = 0;
   double defaultSize = 0;
   Orientation orientation = Orientation.landscape;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    //orientation屏幕方向
    defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.024
        : screenWidth * 0.024;
  }
}
