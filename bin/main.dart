class Persoa{
  String nome;

  Persoa({required this.nome});

  @override
  String toString(){
    return "Persoa - Nome: $nome";
  }
	
  void presentarse(){
    print("Ola son $nome");
  }

  static bool eSerVivo(){
    return false;
  }
}

class Profesor extends Persoa{
  String centro;
  Profesor({required super.nome, this.centro = ""});

	@override
	void presentarse(){
   	print("Ola son $nome e traballo no centro $centro");
  }

  @override
  String toString(){
    return "Profe - Nome: $nome";
  }
}


class Curso {
  String grupo; 
  // Profesor titor;

  void Function() aoComezar;
  Curso({required this.grupo, required this.aoComezar});

  comezar(){
    print("Hola mundo!");
    aoComezar();
  }
  /*List<Alumno> alumnos;
	List<Profesor> profes;*/
}

void avisar(){
  print("Crazy hamburger");
}
void main(List<String> args) {
  var sicsevenaldoJR = Persoa(nome: "SixsevenaldoJR");
  var giganigga = Profesor(nome: "Giga Nigga", centro: "ies san mamede");
  print(sicsevenaldoJR);
  sicsevenaldoJR.presentarse();
  giganigga.presentarse();
  print("É ser vivo?");
  print(Persoa.eSerVivo() ? "si" : "no");

  Curso dam2 = Curso(grupo: "A", aoComezar: () => print("Peperra"));
}