String formatearNome({required String nome, required apelido}){
	String nomecompleto = nome.toUpperCase();
  nomecompleto += " " + apelido.toUpperCase();
  
  return nomecompleto;
}

void main(List<String> args) {
  print(formatearNome(nome: "NiggaOne", apelido: "NiggaTwo"));
	print(formatearNome(nome: "NiggaThree", apelido: ""));
  formatearNome(nome: "", apelido: "NiggaFour");

}