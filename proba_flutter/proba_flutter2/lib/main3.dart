import 'dart:io';

import 'package:material_ui/material_ui.dart';



void main(List<String> args) {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp( home: PantallaContador(numero: 5, titulo: "Didi restaurante",),);
    return MaterialApp(home: Fiestra1(),);
  }
}
class Didi extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("../assets/didiburgerhermanoque.jpg",fit: BoxFit.scaleDown);
  }
}

class PantallaContador extends StatefulWidget {
  final String titulo;
  final int numero;
  const new({required this.numero, required this.titulo, super.key});

  @override
  State<PantallaContador> createState() => _PantallaContadorState();
}



class _PantallaContadorState extends State<PantallaContador> {
  int _contador = 0;

  void incrementar(){
    setState(() {
      _contador+=widget.numero;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.titulo),),
      body: Center(
        child: Column(
          children: [
            Text("Didi burgers comidas: $_contador"),
            ElevatedButton(onPressed: incrementar, child: Text("Comer ${widget.numero} didi burger")),
            Didi()
          ],
        ),
      ),
    );
  }
}

class Fiestra1 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Didi mostrador")
      ),
      body: ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => PantallaContador(numero: 1, titulo: "Didi mesa")));
        }, 
        child: Text("Ir a la didi mesa")),
    );
  }
}