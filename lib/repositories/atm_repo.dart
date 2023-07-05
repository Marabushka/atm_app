class AtmRepository {
  Map<int, int> limits;

  AtmRepository({required this.limits});

  List<String> getSum() {
    List<String> vsego = [];
    limits.forEach((key, value) {
      vsego.add('$value x $key рублей');
    });
    return vsego;
  }

  int getLessSumm(int amount) {
    int sum = 0;
    limits.forEach((key, value) {
      if (amount >= key) {
        sum += value * key;
      }
    });
    return sum;
  }

  Map<int, int> withdraw(int amount) {
    Map<int, int> result = {};

    List<int> denominations = [5000, 2000, 1000, 500, 200, 100];
    getSum();
    for (int denomination in denominations) {
      if (amount >= denomination &&
          limits[denomination]! > 0 &&
          getLessSumm(amount) >= amount) {
        int count = amount ~/ denomination;
        if (limits[denomination]! < count) {
          count = limits[denomination]!;
        }

        result[denomination] = count;
        amount -= denomination * count;
        limits[denomination] = limits[denomination]! - count;
      }
    }

    if (amount == 0) {
      return result;
    } else {
      throw Exception('Невозможно снять данную сумму');
    }
  }
}
