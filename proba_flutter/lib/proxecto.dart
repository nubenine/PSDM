import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Imaxe(),
    );
  }
}

class Intento extends StatelessWidget {
  const Intento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Imaxe(),
    );
  }
}

class Imaxe extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("../assets/sigmaflo.jpg", fit: BoxFit.scaleDown ,);
  }
}