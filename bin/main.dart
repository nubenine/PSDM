import 'dart:io';
import 'dart:mirrors';
typedef tipoLibro = ({String nomeLibro, int anoLanzamento});

void presentar({required String nome, String grupo = "2ºDAM"}){
		print("Hola $nome, pertences ao $grupo");
 }

void presentar2(String nome, [String grupo = "1 DAM"]){
    print("Hola $nome, pertences ao $grupo");
}

int dobre(int num) => num*2;

void executarAccion(void Function() accion){
	accion();
}


int facerOperacion(int numero, int Function(int) operacion){
  return operacion(numero);
}



void main(){
  (String, int) rexistro = ("Diego", 34);
  (String, int) rexistro3 = ("ActivaCam", 14);
  print(rexistro);
  print("O primeiro campo é: ${rexistro.$1}; O segundo campo é ${rexistro.$2}");

  var nome = rexistro.$1;
  print(nome);

  ({String nome, int idade}) rexistro2 = (nome: "Diego", idade: 34);
  print(rexistro2);
  print("O primeiro campo é: ${rexistro2.nome}; O segundo campo é ${rexistro2.idade}");
  rexistro = rexistro3;

  tipoLibro libro = (nomeLibro: "O meu libro", anoLanzamento: 2067);
 	tipoLibro libro2 = (nomeLibro: "O meu libro", anoLanzamento: 2067);
  tipoLibro libro3 = (nomeLibro: "O meu libro", anoLanzamento: 2067);

  int idade = 4;

  if(idade>=18){
    print("Maior de idade");
  } else {
    print("Menor de idade (activa cam)");
  }

  int nota = 4;

  switch(nota){
    case >=9 && <=10: print("Sobresainte");
    case >=7 && <9: print("Notable");
    case >=5 && <7: print("Aprobado");
    case >=0 && <5: print("Suspenso");
    default: print("nota nun valida. Nigga");
  }

  for (var i = 1; i < 5; i++) {
    print(i);
  }
  var nomes = ["Diego", "Pepe"];
  for (var element in nomes) {
    print(element);
  }


  List<String> alumnos = ["Pepe", "Nigga"];
  print(alumnos[0]);
  alumnos[1] = "Xavier";
  print(alumnos[1]);
  alumnos.remove("Pepe");
  print(alumnos);
	alumnos.add("Aaaai");

  presentar(nome: "NiggaOne");
  presentar(nome: "NiggaTwo", grupo: "2ºDAM");

  presentar2("NiggaThree", "2ºDAM");
  presentar2("NiggaFour");
	
  int Function(int) opercaion = dobre;
  int Function(int) operacion2 = (int num){
    return num*3;
  };
	
	int Function(int) operacion3 = (int num) => num*4;

  void Function() prueba = () {
    print("Prueba");
  }

  prueba();

  print(prueba);
	
	var operacion = dobre;

  print(opercaion(2));

	executarAccion((){
    print("Hola caracola");
  });

  executarAccion(() => print("Nigga"));

  int resultado = facerOperacion(5,dobre);
  print(resultado);

}

 