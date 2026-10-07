void main(List<String> args) {
  final int identificador = 1;
  String nome = "Diego Rodicio";
  String? telefono;

  print("ID: $identificador");
  print("Nome: $nome");
  print("Telefono: ${telefono ?? "Sen telefono"}");
}