import 'dart:io';

void main() {
  print('digite seu nome: ');
  String? nome = stdin.readLineSync();

  print('digite sua idade: ');
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.isNotEmpty) {
    int idade = int.parse(entrada);
    int faltam = 100 - idade;
    print('opa, $nome! faltam $faltam anos para você completar 100 anos.');
  } else {
    print('vc não digitou a idade corretamente.');
  }
}