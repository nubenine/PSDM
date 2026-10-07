import 'dart:io';


void main(List<String> args) {
  int? idade = null; 
  print(idade == null ? "Sin idade" : "É par? ${(idade.isEven == true ? "Sí" : "No")}");
  final data = DateTime.now();
}