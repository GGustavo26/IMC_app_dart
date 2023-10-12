import 'package:imc_app/imc_app.dart';
import 'dart:io';

void main() {
  bool continuar = true;

  print("");
  print("Calculadora de IMC -- V0001 -- By: Gustavo Santos\n");

  while (continuar) {
    try {
      print("");
      limparConsole(); // Limpa o console antes de imprimir novos valores.

      print("Digite o nome da pessoa: ");
      String nome = stdin.readLineSync() ?? "";

      print("");
      print("Digite o peso da pessoa (em kg): ");
      double peso = double.parse(stdin.readLineSync() ?? "");

      print("");
      print("Digite a altura da pessoa (em metros): ");
      double altura = double.parse(stdin.readLineSync() ?? "");

      Pessoa pessoa = Pessoa(nome, peso, altura);

      double imc = pessoa.calcularIMC();

      print("");
      print("O IMC de ${pessoa.nome} é: ${imc.toStringAsFixed(2)}");

      String estadoPeso;

      if (imc < 16) {
        estadoPeso = "Magreza grave";
      } else if (imc == 16 || imc < 17) {
        estadoPeso = "Magreza moderada";
      } else if (imc == 17 || imc < 18.5) {
        estadoPeso = "Magreza leve";
      } else if (imc == 18.5 || imc < 25) {
        estadoPeso = "Saudável";
      } else if (imc == 25 || imc < 30) {
        estadoPeso = "Sobrepeso";
      } else if (imc == 30 || imc < 35) {
        estadoPeso = "Obesidade grau I";
      } else if (imc == 35 || imc < 40) {
        estadoPeso = "Obesidade grau II";
      } else {
        estadoPeso = "Obesidade grau III";
      }

      print("Estado de peso: $estadoPeso \n");

      print("Deseja calcular o IMC de outra pessoa? (S/N)");
      String resposta = stdin.readLineSync()?.toUpperCase() ?? "";
      continuar = resposta == "S";
    } catch (e) {
      print("Ocorreu um erro: $e");
      print("Recomeçando....");
    }
  }
  print("Programa encerrado.");
}
