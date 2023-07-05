import 'package:flutter/material.dart';

import '../../style/custom_styles.dart';
import '../../style/metric.dart';

class ErrorPanel extends StatelessWidget {
  final String message;
  final List<String> summa;
  const ErrorPanel({super.key, required this.message, required this.summa});

  @override
  Widget build(BuildContext context) {
    final ScreenMetrics screenMetrics = calculateScreenMetrics(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Divider(
          height: screenMetrics.screenHeight * 0.012,
          color: Colors.grey.shade200,
          thickness: screenMetrics.screenHeight * 0.012,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 25, vertical: screenMetrics.screenHeight * 0.035),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: CustomStyles.pink18,
            textScaleFactor: screenMetrics.scaleFactor,
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
        Divider(
          height: screenMetrics.screenHeight * 0.012,
          color: Colors.grey.shade200,
          thickness: screenMetrics.screenHeight * 0.012,
        ),
      ],
    );
  }
}
