import 'package:flutter_test/flutter_test.dart';

// Fungsi yang akan diuji
bool validateEmail(String email) {
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegex.hasMatch(email);
}

void main() {
  group('Email Validation Test', () {
    test('Valid Email Test', () {
      expect(validateEmail('example@gmail.com'), isTrue);
      expect(validateEmail('user123@domain.co.id'), isTrue);
    });

    test('Invalid Email Test', () {
      expect(validateEmail('invalidemail'), isFalse);
      expect(validateEmail('@domain.com'), isFalse);
      expect(validateEmail('email@'), isFalse);
    });
  });
}
