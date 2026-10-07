String formatearNome(String nombre, String apellido){
	String cadea = nombre.toUpperCase();
  cadea += " ";
  cadea += apellido.toUpperCase();
  return cadea;
}

void main(List<String> args) {
  print(formatearNome("Sus", "Didy"));
}