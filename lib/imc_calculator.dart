import 'dart:io';

import 'package:imc_calculator/class/person.dart';

String calculator() {
  print("Calcule o seu IMC (Índicie de Massa Coporal)");

  print("Digite seu nome: ");
  String name = stdin.readLineSync() ?? '';

  print("Digite seu peso: ");
  double weight = double.parse(stdin.readLineSync()!);

  print("Digite sua altura: ");
  double height = double.parse(stdin.readLineSync()!);

  Person person = Person(name: name, weight: weight, height: height);

  return person.calculateIMC();
}
