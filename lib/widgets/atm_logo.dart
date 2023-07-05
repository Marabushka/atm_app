import 'package:flutter/material.dart';

import '../style/custom_icons_icons.dart';

Widget atmLogo() {
  return SizedBox(
    width: 30,
    child: Stack(
      children: [
        Icon(
          CustomIcons.ellipse_2,
          color: Colors.white.withOpacity(0.9),
          size: 25,
        ),
        Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Icon(
            CustomIcons.ellipse_1,
            color: Colors.white.withOpacity(0.9),
            size: 25,
          ),
        )
      ],
    ),
  );
}
