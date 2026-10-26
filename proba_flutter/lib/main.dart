import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Nigga());
}


class Nigga extends StatelessWidget {
  const Nigga({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PantallaPrincipal(), title: "Titulo App",
    );
  }
}


class PantallaPrincipal extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sic Seben barra")),
      body: Text("Nigga!")
    );
  }
}