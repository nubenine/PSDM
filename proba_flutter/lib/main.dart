import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OMeuTexto("Texto", corFondo: Colors.amber,)
    );
  }
}

class OMeuIcono extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.favorite);
  }
}

class AMinaImaxeLocal extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/img/foto.jpg");
  }
}

class OMeuTexto extends StatelessWidget {
  final Color? corFondo;
  final String? texto;
  const OMeuTexto(this.texto,{
    this.corFondo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Column(
      children: [
        SizedBox(height: 40.0),
        Text(this.texto!)
      ],
    )
        
      );
  }
}

class Outro extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Column(
      children: [
        SizedBox(height: 40.0),
        Text("sicseben")
        AMinaImaxeLocal()
      ],
    )
        
      );
  }
}