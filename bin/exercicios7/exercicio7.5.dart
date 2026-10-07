
void main(List<String> args) {
  var usuarios = [
    (nome: "Xurxo", idade: 20),
    (nome: "Sergio", idade: 21),
    (nome: "Ana", idade: 19)
  ];

  for (var nigga in usuarios){
    print(nigga.nome);
    print(nigga.idade);
  }
}