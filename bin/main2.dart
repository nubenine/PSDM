import 'dart:io';
import 'dart:mirrors';

String converterMaiusculas(String nome) => nome.toUpperCase();
int compararNotas(int num1, int num2){
  return num1.compareTo(num2);
}
bool estaAprobado(int num) => num >=5;
main(){
  List<String> lista = ["Xurxo", "Roi", "Iria"];
	List<int> notas = [2, 9, 3, 4, 10];
	
  List<int> aprobadas = notas.where(estaAprobado).toList();
	List<int> suspensos = notas.where((int num) => num < 5).toList();

  print(aprobadas);
  
}