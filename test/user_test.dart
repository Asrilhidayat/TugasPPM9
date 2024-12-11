import 'package:flutter_test/flutter_test.dart';

class User {
  final String nama;
  final int umur;

  User({required this.nama, required this.umur});

  // Konversi ke JSON
  Map<String, dynamic> toJson() {
    return {
      'nama': nama,
      'umur': umur,
    };
  }

  // Konstruktor dari JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      nama: json['nama'],
      umur: json['umur'],
    );
  }
}

void main() {
  group('User Model Tests', () {
    test('User Creation Test', () {
      final user = User(nama: 'John Doe', umur: 30);

      expect(user.nama, equals('John Doe'));
      expect(user.umur, equals(30));
    });

    test('User JSON Conversion Test', () {
      // Buat objek user
      final user = User(nama: 'Jane Smith', umur: 25);

      // Konversi ke JSON
      final json = user.toJson();
      expect(json['nama'], equals('Jane Smith'));
      expect(json['umur'], equals(25));

      // Konversi dari JSON
      final userDariJson = User.fromJson(json);
      expect(userDariJson.nama, equals(user.nama));
      expect(userDariJson.umur, equals(user.umur));
    });
  });
}
