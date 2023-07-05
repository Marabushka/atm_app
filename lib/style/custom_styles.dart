import 'package:flutter/material.dart';

import 'custom_colors.dart';

class CustomStyles {
  static const Decoration appBarDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[CustomColors.lightPurple, CustomColors.purple]));
  static const TextStyle white20 =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400);

  static const TextStyle white15 =
      TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400);

  static const TextStyle white16 =
      TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400);
  static const TextStyle white30 =
      TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500);
  static const TextStyle pink18 = TextStyle(
      fontSize: 18, color: CustomColors.pink, fontWeight: FontWeight.w400);
  static const TextStyle purple14 = TextStyle(
      fontSize: 14, color: CustomColors.purple, fontWeight: FontWeight.w500);
  static const TextStyle grey13 = TextStyle(
      fontSize: 13, color: CustomColors.grey, fontWeight: FontWeight.w400);
}
