import 'dart:math';

({int minimo, int maximo}) minMax(List<int> lista){
  int max = lista.first;
  int min = lista[0];

  for(var numero in lista){
    if(numero < min){
      min = numero;
    }
    if (numero>max){
      max = numero;
    }
  }

  return(minimo: min, maximo: max);
}

void main(List<String> args) {
  List<int> listNum = [4,5,6,7,8,9,0,4,3,5];
  print(minMax(listNum));
}