void main(List<String> args) {
  List<Object> valores = [1, 'Diego', 3];

  int suma = 0;

  for (var valor in valores){
    if(valor is int){
      suma += valor;
    }
  }

  print(suma);
}