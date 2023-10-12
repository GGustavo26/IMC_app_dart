import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcularIMC() {
    return peso / (altura * altura);
  }
}

void limparConsole() {
  if (Platform.isWindows) {
    // Se o sistema for Windows, use o comando 'cls' para limpar o console.
    Process.run('cls', [], runInShell: true);
  } else {
    // Se for um sistema Unix (incluindo macOS e Linux), use o comando 'clear'.
    Process.run('clear', [], runInShell: true);
  }
}
