import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repositories/atm_repo.dart';

part 'money_state.dart';

class MoneyCubit extends Cubit<MoneyState> {
  final TextEditingController controller = TextEditingController();
  final AtmRepository atm;

  MoneyCubit(this.atm) : super(const MoneyInitial());

  void withDrawMoney() {
    if (controller.text.isNotEmpty) {
      double amount = double.parse(controller.text);
      int roundedAmount = amount.round();
      List<String> vidano = [];
      if (roundedAmount > 0) {
        if (roundedAmount % 100 == 0) {
          try {
            Map<int, int> withdrawalResult = atm.withdraw(roundedAmount);

            withdrawalResult.forEach((denomination, count) {
              vidano.add('$count x $denomination руб');
            });

            emit(MoneyLoaded(vidano, atm.getSum()));
          } catch (e) {
            emit(MoneyError(
                'Банкомат не может выдать запрашиваемую сумму', atm.getSum()));
          }
        } else {
          emit(MoneyError('Введите сумму кратную 100', atm.getSum()));
        }
      } else {
        emit(MoneyError('Введите сумму больше 0', atm.getSum()));
      }
    } else {
      emit(MoneyError('Введите сумму', atm.getSum()));
    }
  }
}
