class Person {
  String name;
  double weight;
  double height;

  Person({
    required this.name,
    required this.weight,
    required this.height,
  });

  String calculateIMC() {
    if (weight <= 0) {
      throw ArgumentError("O peso deve ser maior que zero.");
    } else if (height <= 0) {
      throw ArgumentError("A altura deve ser maior que zero.");
    }

    double imc = weight / (height * height);

    String resultFormatted = imc.toStringAsFixed(2);

    switch (imc) {
      case double imc when imc < 18.5:
        return 'Seu IMC é $resultFormatted o que significa que você está abaixo do peso';
      case double imc when imc < 24.9:
        return 'Seu IMC é $resultFormatted o que significa que você está com o peso normal';
      case double imc when imc < 29.9:
        return 'Seu IMC é $resultFormatted o que significa que você está com sobrepeso';
      default:
        return 'Seu IMC é $resultFormatted o que significa que você está com obesidade';
    }
  }
}
