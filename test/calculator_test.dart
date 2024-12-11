import 'package:flutter_test/flutter_test.dart';

class Calculator {
  int add(int a, int b) => a + b;
  int subtract(int a, int b) => a - b;
  double divide(int a, int b) {
    if (b == 0) throw ArgumentError('Pembagi tidak boleh nol');
    return a / b;
  }
}

void main() {
  group('Calculator Tests', () {
    late Calculator calculator;

    setUp(() {
      calculator = Calculator();
    });

    test('Addition Test', () {
      expect(calculator.add(5, 3), equals(8));
      expect(calculator.add(-2, 2), equals(0));
    });

    test('Subtraction Test', () {
      expect(calculator.subtract(10, 4), equals(6));
      expect(calculator.subtract(5, 7), equals(-2));
    });

    test('Division Test', () {
      expect(calculator.divide(10, 2), equals(5.0));
      expect(() => calculator.divide(10, 0), throwsArgumentError);
    });
  });
}
