import 'package:imc_calculator/class/person.dart';
import 'package:test/test.dart';

void main() {
  group('Classe Person', () {
    test('calculateIMC deve lançar ArgumentError quando o peso é zero', () {
      expect(() => Person(name: 'João', weight: 0, height: 1.7).calculateIMC(),
          throwsA(TypeMatcher<ArgumentError>()));
    });

    test('calculateIMC deve lançar ArgumentError quando a altura é zero', () {
      expect(() => Person(name: 'João', weight: 70, height: 0).calculateIMC(),
          throwsA(TypeMatcher<ArgumentError>()));
    });

    test('Teste com IMC normal', () {
      final person = Person(name: 'Alice', weight: 60.0, height: 1.70);
      expect(person.calculateIMC(), contains('com o peso normal'));
    });

    test('Teste com IMC abaixo do peso', () {
      final person = Person(name: 'David', weight: 50.0, height: 1.75);
      expect(person.calculateIMC(), contains('abaixo do peso'));
    });

    test('Teste com IMC com sobrepeso', () {
      final person = Person(name: 'Fernando', weight: 80.0, height: 1.75);
      expect(person.calculateIMC(), contains('com sobrepeso'));
    });

    test('Teste com IMC com obesidade', () {
      final person = Person(name: 'João', weight: 100.0, height: 1.75);
      expect(person.calculateIMC(), contains('com obesidade'));
    });
  });
}
