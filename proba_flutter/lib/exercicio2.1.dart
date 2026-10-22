// Coleccion de datos de musica
import 'dart:io';

// Define los campos de cada cancion mediante un Record con campos nombrados.
typedef Cancion = ({
  String titulo,
  String artista,
  String album,
  String genero,
  int year,
  int duracion
});

// Muestra las opciones disponibles en el menu principal.
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

// Crea y devuelve una cancion agrupando todos sus datos en un Record.
Cancion crearCancion(String title, String artist, String albm, String genre, int ano, int time){
  var cancionEj = (
    titulo: title,
    artista: artist,
    album: albm,
    genero: genre,
    year: ano,
    duracion: time
  );
  return cancionEj;
}

// Busca canciones por titulo o artista sin distinguir mayusculas y minusculas.
// Utiliza un for-in para recorrer la lista y muestra las canciones encontradas.
void buscarCancion(List<Cancion> canciones){
  String? buscarObjetivo;
  bool encontrado = false;

  // Comprueba si la lista esta vacia antes de realizar la busqueda.
  if (canciones.isEmpty){
    print("Error, la lista esta vacia");
  } else {
    do{
      print("----BUSCAR CANCION----");
      print("Introduce el titulo o el artista de la cancion: ");
      buscarObjetivo = stdin.readLineSync()?? '';

      // Recorre las canciones y compara el texto introducido con el titulo y el artista.
      // toLowerCase permite comparar los textos sin distinguir mayusculas y minusculas.
      for (var cancion in canciones){
        if (cancion.titulo.toLowerCase()==buscarObjetivo.toLowerCase()||cancion.artista.toLowerCase()==buscarObjetivo.toLowerCase()){
          // Muestra todos los datos de la cancion cuando coincide con la busqueda.
          print("--CANCION ENCONTRADA--");
          print("-Titulo: ${cancion.titulo}");
          print("-Artista: ${cancion.artista}");
          print("-Album: ${cancion.album}");
          print("-Género: ${cancion.genero}");
          print("-Año de publicacion: ${cancion.year}");
          print("-Duracion de la cancion: ${cancion.duracion}s");
          encontrado = true;
        }
      }

      // Informa al usuario si el texto esta vacio o no se encuentra ninguna coincidencia.
      if (buscarObjetivo == '' || buscarObjetivo == null||!encontrado){
        print("Introduce un titulo o artista valido");
      }
    } while (buscarObjetivo == '' || buscarObjetivo == null); 
  }  
}

// Muestra todas las canciones guardadas en la coleccion.
// Utiliza isEmpty para comprobar si hay canciones y for-in para recorrerlas.
void listarCanciones(List<Cancion> canciones){
  if (canciones.isEmpty){
    print("Error, a lista esta vacia");
  } else {
    for (var cancion in canciones){
      // Muestra los campos de cada Record mediante interpolacion de cadenas.
      print("--CANCION--");
      print("-Titulo: ${cancion.titulo}");
      print("-Artista: ${cancion.artista}");
      print("-Album: ${cancion.album}");
      print("-Género: ${cancion.genero}");
      print("-Año de publicacion: ${cancion.year}");
      print("-Duracion de la cancion: ${cancion.duracion}s");
    }
  }
}

// Busca una cancion por su titulo y la elimina de la lista cuando la encuentra.
// Utiliza remove para eliminar el elemento y un booleano para controlar si se ha encontrado.
void eliminarCancion(List<Cancion> canciones){
  String? tituloEliminar;
  bool encontrado = false;
  do{
    print("Introduce el titulo de la cancion que quieras eliminar");
    tituloEliminar = stdin.readLineSync() ?? '';

    // Recorre la lista y compara el titulo introducido con el de cada cancion.
    for (var cancion in canciones){
      if(cancion.titulo.toLowerCase() == tituloEliminar.toLowerCase()){
        encontrado = true;

        // Elimina de la lista la cancion que coincide con el titulo.
        canciones.remove(cancion);
        print("Cancion eliminada con exito");
        break;
      }
    }

    // Comprueba si el titulo esta vacio o no se ha encontrado la cancion.
    if (tituloEliminar==''||tituloEliminar==null||!encontrado){
      print("Introduce un titulo valido");
    }
  } while (tituloEliminar==''||tituloEliminar==null||!encontrado);

}

// Busca una cancion por su titulo y permite modificar sus campos.
// Crea un nuevo Record con los datos actualizados porque sus campos no se pueden reasignar.
void modificarCancion(List<Cancion> canciones){
  String? tituloObjetivo;
  int? modificacion, indexModificar;
  bool modificado = false;
  bool encontrado = false;

  // Pide el titulo y comprueba que exista una cancion con ese nombre.
  do{
    print("Introduce el titulo de la cancion que quieras modificar: ");
    tituloObjetivo = stdin.readLineSync() ?? '';

    for (var cancion in canciones){
      if (cancion.titulo.toLowerCase() == tituloObjetivo.toLowerCase()){
          encontrado = true;
          break;
      }
    }

    // Si el titulo no es valido o no existe, vuelve a solicitarlo.
    if (tituloObjetivo == '' || tituloObjetivo == null || !encontrado){
      encontrado = false;
      print("Introduce un titulo valido");
    }
  } while (tituloObjetivo == '' || tituloObjetivo == null || !encontrado);

  // Recorre la lista para localizar la cancion que se quiere modificar.
  for (var cancion in canciones){
    if (cancion.titulo.toLowerCase() == tituloObjetivo.toLowerCase()){
      String? tituloModificar, artistaModificar, albumModificar, generoModificar;
      int? anoModificar, duracionModificar;

      // Guarda la posicion de la cancion para poder sustituirla despues.
      indexModificar = canciones.indexOf(cancion);
      print(cancion);

      // Repite el menu de modificacion hasta que el usuario elija volver.
      do{
        do{
          print("Que campo quieres modificar? (0-6)");
          print("-1: Titulo");
          print("-2: Artista");
          print("-3: Album");
          print("-4: Genero");
          print("-5: Año");
          print("-6: Duracion (en segundos)");
          print("-0: <- Volver");

          // Convierte la opcion introducida a entero de forma segura.
          modificacion = int.tryParse(stdin.readLineSync() ?? '');
          if (modificacion == null) {
            print("Error, introduce una opcion numerica");
          }
        } while (modificacion == null);

        // Ejecuta la opcion elegida para modificar el campo correspondiente.
        switch (modificacion){
          case 1:
            do {
              print("Introduce el titulo a modificar");
              tituloModificar = stdin.readLineSync();
              if (tituloModificar == ''||tituloModificar==null){
                print("Error, introduce un titulo a modificar");
              }
            } while (tituloModificar == ''||tituloModificar==null);
            modificado = true;
            break;

          case 2: 
            do {
              print("Introduce el artista a modificar");
              artistaModificar = stdin.readLineSync();
              if (artistaModificar == ''||artistaModificar==null){
                print("Error, introduce un artista a modificar");
              }
            } while (artistaModificar == ''||artistaModificar==null);
            modificado = true;
            break;

          case 3:
            do {
              print("Introduce el album a modificar");
              albumModificar = stdin.readLineSync();
              if (albumModificar == ''||albumModificar==null){
                print("Error, introduce un album a modificar");
              }
            } while (albumModificar == ''||albumModificar==null);
            modificado = true;
            break;

          case 4: 
            do {
              print("Introduce el genero a modificar");
              generoModificar = stdin.readLineSync();
              if (generoModificar == ''||generoModificar==null){
                print("Error, introduce el genero a modificar");
              }
            } while (generoModificar == ''||generoModificar==null);
            modificado = true;
            break;

          case 5:
            do {
              print("Introduce el año a modificar");
              anoModificar = int.tryParse(stdin.readLineSync() ?? '');
              if (anoModificar==null){
                print("Error, introduce el año a modificar");
              }
            } while (anoModificar==null);
            modificado = true;
            break;

          case 6: 
            do {
              print("Introduce la duracion a modificar");
              duracionModificar = int.tryParse(stdin.readLineSync() ?? '');
              if (duracionModificar==null){
                print("Error, introduce la duracion a modificar");
              }
            } while (duracionModificar==null||duracionModificar<=0);
            modificado = true;
            break;

          case 0:
            print(" ");
            break;

          case <0||>6:
            print("Introduce un numero valido");
        }
      } while (modificacion!=0);

      // Si un campo no se ha modificado, conserva el valor que tenia originalmente.
      if (tituloModificar == ''||tituloModificar==null){
          tituloModificar = cancion.titulo;
        }
        if (artistaModificar == ''||artistaModificar==null){
          artistaModificar = cancion.artista;
        }
        if (albumModificar == ''||albumModificar==null){
          albumModificar = cancion.album;
        }
        if (generoModificar == ''||generoModificar==null){
          generoModificar = cancion.genero;
        }
        if (anoModificar==null){
          anoModificar = cancion.year;
        }
        if (duracionModificar==null){
          duracionModificar = cancion.duracion;
        }

        // Crea un nuevo Record y lo inserta en la lista cuando se ha modificado algun campo.
        if (modificado){
          var cancionModificada = crearCancion(tituloModificar!, artistaModificar!, albumModificar!, generoModificar!, anoModificar!, duracionModificar!);
          canciones.insert(indexModificar, cancionModificada);
          canciones.remove(cancion);
          print("Cancion modificada exitosamente");
          print(canciones[indexModificar]);
        }
      break;
    }
  }
}

// Pide los datos de una nueva cancion, comprueba que sean validos y la añade a la lista.
// Utiliza tryParse para convertir el año y la duracion a enteros.
void engadirCancion(List<Cancion> canciones){
  String? tituloEngadir, artistaEngadir, albumEngadir, generoEngadir;
  int? yearEngadir, duracionEngadir;

  print("----ENGADIR CANCIÓN----");

  // Solicita el titulo y comprueba que no este vacio.
  do {
    print("-Introduce o título da cancion: ");
    tituloEngadir = stdin.readLineSync();
    if (tituloEngadir == ''||tituloEngadir==null){
      print("Introduce un titulo");
    }
  } while (tituloEngadir == ''||tituloEngadir == null);

  // Solicita el artista y comprueba que no este vacio.
  do {
    print("-Introduce o artista da cancion: ");
    artistaEngadir = stdin.readLineSync();
    if (artistaEngadir == ''||artistaEngadir == null){
      print("Introduce un artista");
    }
  } while (artistaEngadir == ''||artistaEngadir == null);

  // Solicita el album y comprueba que no este vacio.
  do {
    print("-Introduce o album da cancion: ");
    albumEngadir = stdin.readLineSync();
    if (albumEngadir == ''||albumEngadir == null){
      print("Introduce un album");
    }
  } while (albumEngadir == ''||albumEngadir == null);

  // Solicita el genero y comprueba que no este vacio.
  do {
    print("-Introduce o xenero da cancion: ");
    generoEngadir = stdin.readLineSync();
    if (generoEngadir == ''||generoEngadir == null){
      print("Introduce un xenero");
    }
  } while (generoEngadir == ''||generoEngadir == null);

  // Solicita el año y comprueba que se pueda convertir a entero.
  do {
    print("-Introduce o ano de saída da cancion: ");
    yearEngadir = int.tryParse(stdin.readLineSync() ?? '');
    if (yearEngadir == null){
      print("Introduce un ano");
    }
  } while (yearEngadir == null);

  // Solicita la duracion y comprueba que se pueda convertir a entero.
  do {
    print("-Introduce a duración da cancion en segundos: ");
    duracionEngadir = int.tryParse(stdin.readLineSync() ?? '');
    if (duracionEngadir == null){
      print("Introduce unha duracion valida");
    }
  } while (duracionEngadir == null);

  // Crea el Record con los datos introducidos y lo añade a la coleccion.
  var cancion = crearCancion(tituloEngadir!, artistaEngadir!, albumEngadir!, generoEngadir!, yearEngadir, duracionEngadir!);
  canciones.add(cancion);
  print("Cancion engadida con exito");
}

// Carga canciones de ejemplo utilizando listas con los datos de cada campo.
// Solo añade los datos automaticamente cuando la coleccion esta vacia.
void cargarDatosExemplo(List<Cancion> canciones){
  // Guarda por separado los datos de las canciones de ejemplo.
  List<String> titulos = ['Through The Fire and Flames', 'Eyeless', 'Lux Aeterna', 'Ride Into Obsession', 'Sonic Blaster', 'Chop Suey!'];
  List<String> artistas = ['DragonForce', 'Slipknot', 'Metallica', 'Blind Guardian', 'F-777', 'System of a Down'];
  List<String> albumes = ['Inhuman Rampage', 'Slipknot', '72 Seasons', 'At the Edge of Time', 'Lets Freaking Party', 'Toxicity'];
  List<String> generos = ['Power metal', 'Nu metal', 'Heavy metal', 'Power metal', 'EDM', 'Nu metal'];
  List<int> years = [2005, 1999, 2023, 2010, 2014, 2001];
  List<int> tiempos = [441, 236, 205, 287, 182, 210];

  if (canciones.isEmpty){
    // Utiliza la misma posicion de cada lista para crear cada cancion.
    for (int i = 0; i<6; i++){
      canciones.add(crearCancion(titulos[i], artistas[i], albumes[i], generos[i], years[i], tiempos[i]));
    }
    print("Canciones añadidas con exito");
  } else {
    print("Xa se añadiran canciones de exemplo");
  }
}

// Inicializa la lista principal y mantiene el menu activo hasta que el usuario elija salir.
// Utiliza un do-while para repetir el menu y un switch para ejecutar cada opcion.
void main(List<String> args) {
  // Lista principal donde se guardan las canciones durante la ejecucion del programa.
  List<Cancion> listaCanciones = [];
  int? opcion;

  do {
    do {
      menu();

      // Lee la opcion y la convierte a entero de forma segura.
      opcion = int.tryParse(stdin.readLineSync() ?? '');

      if (opcion == null) {
        print("Error, introduce una opcion numerica");
      }
    } while (opcion == null);

    // Ejecuta la funcion correspondiente a la opcion seleccionada.
    switch (opcion){
      case 1:
        cargarDatosExemplo(listaCanciones);
        break;

      case 2:
        engadirCancion(listaCanciones);
        break;

      case 3:
        modificarCancion(listaCanciones);
        break;

      case 4:
        eliminarCancion(listaCanciones);
        break;

      case 5:
        listarCanciones(listaCanciones);
        break;

      case 6:
        buscarCancion(listaCanciones);
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
