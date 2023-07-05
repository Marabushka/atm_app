import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/money_cubit.dart';
import '../../style/custom_styles.dart';
import '../../style/metric.dart';
import '../custom_painter.dart';

class AmmountInput extends StatelessWidget {
  const AmmountInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final weatherCubit = context.watch<MoneyCubit>();
    final ScreenMetrics screenMetrics = calculateScreenMetrics(context);
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        RotationTransition(
          turns: const AlwaysStoppedAnimation(180 / 360),
          child: drawWidget(
              screenMetrics.screenWidth, screenMetrics.screenHeight * 0.215),
        ),
        Column(
          children: [
            SizedBox(
              height: screenMetrics.screenHeight * 0.023,
            ),
            Text(
              'Введите сумму',
              style: CustomStyles.white15,
              textScaleFactor: screenMetrics.scaleFactor,
            ),
            SizedBox(
              width: screenMetrics.screenWidth * 0.54,
              child: TextField(
                cursorColor: Colors.white,
                textAlign: TextAlign.center,
                controller: weatherCubit.controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    focusColor: Colors.white,
                    suffixText: 'руб',
                    suffixStyle: CustomStyles.white30),
                style: CustomStyles.white30,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
                  TextInputFormatter.withFunction((oldValue, newValue) {
                    try {
                      final text = newValue.text;
                      if (text.isNotEmpty) double.parse(text);
                      return newValue;
                    } catch (e) {}
                    return oldValue;
                  }),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
