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

({String titulo, String artista, String album, String genero, int year, int duracion})crearCancion(String titulo, String artista, String album, String genero, int year, int duracion){
  var cancionEj = (
		titulo: "",
    artista: "",
    album: "",
    genero: "",
    year: null,
    duracion: null
  );
}

void cargarDatosExemplo(){
	

}


void main(List<String> args) {
  int? opcion;
  do {
    menu();
    String resposta = stdin.readLineSync() ?? '';
    do {
			print("Error, introduce una cadena.");
      menu();
      resposta = stdin.readLineSync() ?? '';
    } while (resposta is! int);
    opcion = int.tryParse(resposta.trim());
    switch (opcion){
      case 1:
					

      	break;
      case 2:


      	break;
      case 3:


      	break;
      case 4:


      	break;
			case 5:


      	break;
      case 6:


      	break;
			case null:
      	print("Introduce una opcion");
        break;
      case >6 || <0:
      	print("Introduce una opcion valida");
        break;
    }
  } while (opcion != 0);
}