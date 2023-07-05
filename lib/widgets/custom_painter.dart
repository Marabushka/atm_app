import 'dart:ui' as ui;

import 'package:flutter/material.dart';

Widget drawWidget(double screenWidth, double height) {
  return Stack(
    fit: StackFit.loose,
    alignment: AlignmentDirectional.bottomStart,
    children: [
      CustomPaint(
        size: Size(screenWidth, height + 20 * height / 100),
        painter: RPSCustomPainter3(),
      ),
      CustomPaint(
        size: Size(screenWidth, height),
        painter: RPSCustomPainter(),
      ),
      CustomPaint(
        size: Size(screenWidth, height),
        painter: RPSCustomPainter2(),
      ),
      CustomPaint(
        size: Size(screenWidth, height),
        painter: RPSCustomPainter4(),
      ),
    ],
  );
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.2000000, size.height * 0.3033462);
    path_0.cubicTo(
        size.width * -0.2000000,
        size.height * 0.3033462,
        size.width * -0.02416797,
        size.height * -0.2951667,
        size.width * 0.3293493,
        size.height * 0.1904231);
    path_0.cubicTo(
        size.width * 0.6828667,
        size.height * 0.6760128,
        size.width * 1.001349,
        size.height * 0.5032436,
        size.width * 1.001349,
        size.height * 0.5032436);
    path_0.lineTo(size.width * 1.004016, size.height);
    path_0.lineTo(size.width * 0.001426677, size.height);
    path_0.lineTo(size.width * -0.2000000, size.height * 0.3033462);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.4020080, size.height * 0.04382013),
        Offset(size.width * 0.4020080, size.height), [
      Color(0xff6C18A4).withOpacity(0.7),
      Color(0xff6C18A4).withOpacity(0.7)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.001427, size.height * 0.03572342);
    path_0.cubicTo(
        size.width * 1.001427,
        size.height * 0.03572342,
        size.width * 0.8412347,
        size.height * -0.1332368,
        size.width * 0.5812667,
        size.height * 0.4208684);
    path_0.cubicTo(
        size.width * 0.3212987,
        size.height * 0.9749737,
        size.width * -0.001066651,
        size.height * 0.1315787,
        size.width * -0.001066651,
        size.height * 0.1315787);
    path_0.lineTo(size.width * -0.001066651, size.height);
    path_0.lineTo(size.width * 1.001427, size.height);

    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5001813, size.height * 1.147621),
        Offset(size.width * 0.5001813, size.height * 4.904842), [
      Color(0xff6C18A4).withOpacity(0.4),
      Color(0xff6C18A4).withOpacity(0.4)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.001427, size.height * 0.6859906);
    path_0.cubicTo(
        size.width * 1.001427,
        size.height * 0.6859906,
        size.width * 0.7244853,
        size.height * 0.2108868,
        size.width * 0.4212667,
        size.height * 0.3960943);
    path_0.cubicTo(size.width * 0.1180480, size.height * 0.5813019,
        size.width * -0.001066651, 0, size.width * -0.001066651, 0);
    path_0.lineTo(size.width * -0.001066651, size.height);
    path_0.lineTo(size.width * 1.001427, size.height);
    path_0.lineTo(size.width * 1.001427, size.height);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(Offset(size.width * 0.5001813, 0),
        Offset(size.width * 0.5001813, size.height), [
      Color(0xff6C18A4).withOpacity(0.3),
      Color(0xff3827B4).withOpacity(0.3)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter4 extends CustomPainter {
  @override
  void paint(
    Canvas canvas,
    Size size,
  ) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.001426677, size.height * 0.2620244);
    path_0.cubicTo(
        size.width * 0.001426677,
        size.height * 0.2620244,
        size.width * 0.1567787,
        size.height * -0.2637805,
        size.width * 0.5093867,
        size.height * 0.1988659);
    path_0.cubicTo(
        size.width * 0.8619947,
        size.height * 0.6615122,
        size.width * 1.001427,
        size.height * 0.6424390,
        size.width * 1.001427,
        size.height * 0.6424390);
    path_0.lineTo(size.width * 0.9987600, size.height);
    path_0.lineTo(size.width * -0.001239989, size.height);
    path_0.lineTo(size.width * 0.001426677, size.height * 0.2620244);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * -0.1239989, size.height * 0.6917878),
        Offset(size.width * 1.001427, size.height * 0.6553573), [
      Color(0xff3827B4).withOpacity(0.7),
      Color(0xff6C18A4).withOpacity(0.7)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
