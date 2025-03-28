// lib/pessoa.dart
class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  // Construtor
  Pessoa(String nome, double peso, double altura) {
    if (peso <= 0) {
      throw ArgumentError("Peso deve ser positivo.");
    }
    if (altura <= 0) {
      throw ArgumentError("Altura deve ser positiva.");
    }

    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  // Calcula IMC
  double calcularIMC() {
    if (_altura <= 0 || _peso <= 0) {
      throw ArgumentError("Altura e Peso devem ser positivos para o cálculo.");
    }
    return _peso / (_altura * _altura);
  }

  // Getters e Setters
  String getNome() => _nome;
  double getPeso() => _peso;
  double getAltura() => _altura;
}
