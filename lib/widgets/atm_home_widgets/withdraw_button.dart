import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/money_cubit.dart';
import '../../style/custom_colors.dart';
import '../../style/custom_styles.dart';
import '../../style/metric.dart';

class WithdrawButton extends StatelessWidget {
  const WithdrawButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final weatherCubit = context.watch<MoneyCubit>();
    final ScreenMetrics screenMetrics = calculateScreenMetrics(context);
    return SizedBox(
      width: screenMetrics.screenWidth * 0.5,
      height: screenMetrics.screenHeight * 0.071,
      child: ElevatedButton(
          onPressed: () {
            weatherCubit.withDrawMoney();
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(CustomColors.pink)),
          child: Text(
            'Выдать сумму',
            style: CustomStyles.white16,
            textScaleFactor: screenMetrics.scaleFactor,
          )),
    );
  }
}
