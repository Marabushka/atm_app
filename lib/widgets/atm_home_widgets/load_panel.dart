import 'package:flutter/material.dart';

import '../../style/custom_styles.dart';
import '../../style/metric.dart';

class LoadedPanel extends StatelessWidget {
  final List<String> vidano;
  final List<String> summa;
  const LoadedPanel({super.key, required this.summa, required this.vidano});

  @override
  Widget build(BuildContext context) {
    final ScreenMetrics screenMetrics = calculateScreenMetrics(context);

    return Column(
      children: [
        Divider(
          height: screenMetrics.screenHeight * 0.012,
          color: Colors.grey.shade200,
          thickness: screenMetrics.screenHeight * 0.012,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: screenMetrics.screenHeight * 0.012,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Банкомат выдал следующие купюрыx',
                textScaleFactor: screenMetrics.scaleFactor,
                style: CustomStyles.grey13,
              ),
              SizedBox(
                height: screenMetrics.screenHeight * 0.012,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < vidano.length / 2; i++)
                        Text(
                          vidano[i],
                          textScaleFactor: screenMetrics.scaleFactor,
                          style: CustomStyles.purple14,
                        ),
                    ],
                  ),
                  SizedBox(width: screenMetrics.screenWidth * 0.1),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = (vidano.length / 2).ceil();
                          i < vidano.length;
                          i++)
                        Text(
                          vidano[i],
                          textScaleFactor: screenMetrics.scaleFactor,
                          style: CustomStyles.purple14,
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          height: screenMetrics.screenHeight * 0.012,
          color: Colors.grey.shade200,
          thickness: screenMetrics.screenHeight * 0.012,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: screenMetrics.screenHeight * 0.012,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Баланс банкомата',
                textScaleFactor: screenMetrics.scaleFactor,
                style: CustomStyles.grey13,
              ),
              SizedBox(
                height: screenMetrics.screenHeight * 0.012,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < 3; i++)
                        Text(
                          summa[i],
                          textScaleFactor: screenMetrics.scaleFactor,
                          style: CustomStyles.purple14,
                        ),
                    ],
                  ),
                  SizedBox(width: screenMetrics.screenWidth * 0.1),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 3; i < 6; i++)
                        Text(
                          summa[i],
                          textScaleFactor: screenMetrics.scaleFactor,
                          style: CustomStyles.purple14,
                        ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
