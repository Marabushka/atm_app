part of 'money_cubit.dart';

abstract class MoneyState {
  const MoneyState();
}

class MoneyInitial extends MoneyState {
  const MoneyInitial();
}

class MoneyLoaded extends MoneyState {
  final List<String> vidano;
  final List<String> summa;
  const MoneyLoaded(this.vidano, this.summa);
}

class MoneyError extends MoneyState {
  final String message;
  final List<String> summa;
  const MoneyError(this.message, this.summa);
}
