import 'package:atm_app/repositories/atm_repo.dart';
import 'package:atm_app/screens/atm_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/money_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    final moneyCounter = AtmRepository(
        limits: {100: 20, 200: 20, 500: 20, 1000: 20, 2000: 20, 5000: 20});
    return BlocProvider(
      create: (context) => MoneyCubit(moneyCounter),
      child: MaterialApp(
        title: 'Bank',
        theme: ThemeData(
          fontFamily: 'SF',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
          useMaterial3: true,
        ),
        home: const AtmHome(),
      ),
    );
  }
}
