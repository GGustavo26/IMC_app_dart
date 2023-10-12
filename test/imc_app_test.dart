import 'package:imc_app/imc_app.dart';
import 'package:test/test.dart';

void main() {
  group('Testes de IMC', () {
    test('Cálculo do IMC', () {
      final pessoa = Pessoa('Teste', 70, 1.75);
      expect(pessoa.calcularIMC(), closeTo(22.86, 0.01));
    });

    test('Estado de peso - Magreza Grave', () {
      final pessoa = Pessoa('Teste', 35, 1.75);
      expect(pessoa.calcularIMC(), lessThan(16.0));
    });

    test('Estado de peso - Magreza Moderada', () {
      final pessoa = Pessoa('Teste', 45, 1.65);
      expect(pessoa.calcularIMC(), greaterThanOrEqualTo(16.0));
      expect(pessoa.calcularIMC(), lessThan(16.9));
    });

    test('Estado de peso - Magreza Leve', () {
      final pessoa = Pessoa('Teste', 47, 1.65);
      expect(pessoa.calcularIMC(), greaterThanOrEqualTo(17.0));
      expect(pessoa.calcularIMC(), lessThan(18.4));
    });

    test('Estado de peso - Saudável', () {
      final pessoa = Pessoa('Teste', 70, 1.75);
      expect(pessoa.calcularIMC(), greaterThanOrEqualTo(18.5));
      expect(pessoa.calcularIMC(), lessThan(24.9));
    });

    test('Estado de peso - Sobrepeso', () {
      final pessoa = Pessoa('Teste', 85, 1.75);
      expect(pessoa.calcularIMC(), greaterThanOrEqualTo(25.0));
      expect(pessoa.calcularIMC(), lessThan(29.9));
    });

    test('Estado de peso - Obesidade Grau I', () {
      final pessoa = Pessoa('Teste', 100, 1.75);
      expect(pessoa.calcularIMC(), greaterThanOrEqualTo(30.0));
      expect(pessoa.calcularIMC(), lessThan(34.9));
    });

    test('Estado de peso - Obesidade Grau II', () {
      final pessoa = Pessoa('Teste', 115, 1.75);
      expect(pessoa.calcularIMC(), greaterThanOrEqualTo(35.0));
      expect(pessoa.calcularIMC(), lessThan(39.9));
    });

    test('Estado de peso - Obesidade Grau III', () {
      final pessoa = Pessoa('Teste', 140, 1.75);
      expect(pessoa.calcularIMC(), greaterThan(40));
    });
  });

  test('Teste de limpeza do console', () {
    limparConsole();
    expect(true, true); // Apenas verifica se a função não lança exceções.
  });
}
