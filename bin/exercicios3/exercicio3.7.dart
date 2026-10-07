void main() {
  Object valor = "Hola";

  if (valor is String) {
    print(valor);
  }

  String texto = valor as String;

  print(texto);
}