import 'dart:io';
import '../lib/pessoa.dart';

void main() {
  try {
    // Ler dados do terminal
    stdout.write('Digite seu nome: ');
    String nome = stdin.readLineSync()!;

    stdout.write('Digite seu peso (em kg): ');
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write('Digite sua altura (em metros): ');
    double altura = double.parse(stdin.readLineSync()!);

    // Criar instância de Pessoa
    Pessoa pessoa = Pessoa(nome, peso, altura);

    // Calcular IMC
    double imc = pessoa.calcularIMC();

    // Imprimir resultado
    print('$nome, seu IMC é: ${imc.toStringAsFixed(2)}');
  } catch (e) {
    print('Erro ao processar os dados: $e');
  }
}
