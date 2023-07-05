import 'package:flutter/material.dart';

ScreenMetrics calculateScreenMetrics(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;
  final double scaleFactor = (screenWidth < 375) ? (screenWidth / 375) : 1;

  return ScreenMetrics(
    screenWidth: screenWidth,
    screenHeight: screenHeight,
    scaleFactor: scaleFactor,
  );
}

class ScreenMetrics {
  final double screenWidth;
  final double screenHeight;
  final double scaleFactor;

  ScreenMetrics({
    required this.screenWidth,
    required this.screenHeight,
    required this.scaleFactor,
  });
}
