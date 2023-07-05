import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/money_cubit.dart';
import '../style/custom_styles.dart';
import '../style/metric.dart';
import '../widgets/atm_home_widgets/ammount_input.dart';
import '../widgets/atm_home_widgets/error_panel.dart';
import '../widgets/atm_home_widgets/load_panel.dart';
import '../widgets/atm_home_widgets/withdraw_button.dart';
import '../widgets/atm_logo.dart';
import '../widgets/custom_painter.dart';

class AtmHome extends StatelessWidget {
  const AtmHome({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenMetrics screenMetrics = calculateScreenMetrics(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          flexibleSpace: Container(decoration: CustomStyles.appBarDecoration),
          elevation: 3,
          bottom: PreferredSize(
            preferredSize: Size(screenMetrics.screenWidth, 20),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  atmLogo(),
                  const Text(
                    'ATM',
                    style: CustomStyles.white20,
                  )
                ],
              ),
            ),
          )),
      body: BlocBuilder<MoneyCubit, MoneyState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: screenMetrics.screenWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const AmmountInput(),
                    const WithdrawButton(),
                    SizedBox(
                      height: screenMetrics.screenHeight * 0.035,
                    ),
                    state is MoneyError
                        ? ErrorPanel(
                            message: state.message,
                            summa: state.summa,
                          )
                        : const SizedBox.shrink(),
                    state is MoneyLoaded
                        ? LoadedPanel(
                            vidano: state.vidano,
                            summa: state.summa,
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
              drawWidget(
                  screenMetrics.screenWidth, screenMetrics.screenHeight * 0.12)
            ],
          );
        },
      ),
    );
  }
}
