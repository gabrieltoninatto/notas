

import 'dart:io';

void main() {
  List<String> notas = <String>[];
  getComando();
  adicionarNota(notas);
}

String getComando() {
  print("Digite um comando: 1 - Adicionar nota, 2 - Listar notas, 3 - Sair");
  List<String> comandos = <String>["1", "2", "3"];
  String? entrada = "";

  entrada = stdin.readLineSync();

  if(entrada == null || !comandos.contains(entrada)) {
    print("Comando inválido");
    getComando();
  }

  return entrada!;
}

List<String> adicionarNota(List<String> notas) {
  print("Escreva uma nota");
  String?  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print("Não e possível adicionar uma nota vazia");
    adicionarNota(notas);
  }
  notas.add(nota!);

  return notas;
}
