void main(List<String> args) {
  var usuario = (
    nome: "Xurxo",
    idade: 20,
    direccion: (
      cidade: "Ourense",
      codigoPostal: 32001
    )
  );

  print(usuario.nome);
  print(usuario.idade);
  print(usuario.direccion.cidade);
  print(usuario.direccion.codigoPostal);
}