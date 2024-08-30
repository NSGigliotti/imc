class PessoaClass {
  final double weight;
  final double height;
  final int gender;

  PessoaClass({
    required this.weight,
    required this.height,
    required this.gender,
  });

  String calcIMC() {
    var result = '';

    final imc = weight / (height * height);

    if (gender == 1) {
      if (imc < 20.7) {
        result = 'Abaixo do peso IMC = ${imc.toStringAsPrecision(2)}';
      } else if (imc >= 20.7 && imc <= 26.4) {
        result = 'Peso ideal IMC = ${imc.toStringAsPrecision(2)}';
      } else if (imc >= 26.5 && imc <= 27.8) {
        result = 'Pouco acima do peso IMC = ${imc.toStringAsPrecision(2)}';
      } else if (imc >= 27.9 && imc <= 31.1) {
        result = 'Acima do peso IMC = ${imc.toStringAsPrecision(2)}';
      } else {
        result = 'Obesidade IMC = ${imc.toStringAsPrecision(2)}';
      }
    } else {
      if (imc < 19.1) {
        result = '	Abaixo do peso IMC = ${imc.toStringAsPrecision(2)}';
      } else if (imc >= 19.1 && imc <= 25.8) {
        result = 'Peso ideal IMC = ${imc.toStringAsPrecision(2)}';
      } else if (imc >= 25.9 && imc <= 27.3) {
        result = 'Pouco acima do peso IMC = ${imc.toStringAsPrecision(2)}';
      } else if (imc >= 27.4 && imc <= 32.3) {
        result = 'Acima do peso IMC = ${imc.toStringAsPrecision(2)}';
      } else {
        result = 'Obesidade IMC = ${imc.toStringAsPrecision(2)}';
      }
    }
    return result;
  }
}
