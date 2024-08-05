import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traver/core/theme/colors.dart';

abstract class Styles {
  static TextStyle textStyleBold48(context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 48),
      fontWeight: FontWeight.bold,
      color: AppColors.whiteColor);

  static TextStyle textStyleNormal16(context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.normal,
      color: AppColors.whiteColor);

  static TextStyle textStyleBold20(context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.bold,
  );

}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .75;
  double upperLimit = fontSize * 1.25;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 500;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
