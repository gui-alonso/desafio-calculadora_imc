// test/pessoa_test.dart
import 'package:test/test.dart';
import 'package:desafio_calculadora_imc/pessoa.dart';

void main() {
  test('Erro ao calcular IMC com altura negativa', () {
    expect(() => Pessoa('João', 70, -1).calcularIMC(), throwsArgumentError);
  });

  test('Erro ao calcular IMC com peso negativo', () {
    expect(() => Pessoa('João', -70, 1.75).calcularIMC(), throwsArgumentError);
  });

  test('Calcular IMC com dados válidos', () {
    var pessoa = Pessoa('João', 70, 1.75);
    expect(pessoa.calcularIMC(), closeTo(22.86, 0.01));
  });
}
