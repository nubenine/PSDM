String crearEtiqueta({String cor = "naranja", int tamanho = 3}){
  return "Etiqueta: $cor, $tamanho";
}

void main(List<String> args) {
  print(crearEtiqueta());
}