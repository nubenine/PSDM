void main(List<String> args) {
  List<String> cores = ['vermello', 'verde', 'azul'];
	cores[1] = 'amarelo';
  cores.removeAt(0);

  print(cores);
}