//Coleccion de datos de musica
import 'dart:io';

void menu(){
  print("-------MENÚ PRINCIPAL-------");
  print("-1: Cargar datos de exemplo: engadir datos automaticamente para probar a aplicación sen introducilos un a un");
  print("-2: Engadir: pedir os datos dun novo elemento e gardalo.");
  print("-3: Modificar: cambiar datos dun elemento existente.");
  print("-4: Eliminar: quitar un elemento da colección.");
  print("-5: Listar: mostrar todos os elementos de forma lexible.");
  print("-6: Buscar: localizar elementos por diferentes campos.");
  print("-0: Saír: rematar o programa");
}

void main(List<String> args) {
  int opcion;
  do {
    menu();
    opcion = int.parse(stdin.readLineSync()!);
  } while (opcion != 0);
}