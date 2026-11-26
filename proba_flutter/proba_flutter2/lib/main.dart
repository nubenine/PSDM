import 'package:material_ui/material_ui.dart';

void main(){

}

class PantallaContador extends StatefulWidget {
  const new({super.key});

  @override
  State<PantallaContador> createState() => _PantallaContadorState();
}

class _PantallaContadorState extends State<PantallaContador> {
  int _contador = 0;

  void incrementarCont(){
    _contador++;
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(
        children: [
          Text("Didi burgers: $_contador"),
          ElevatedButton(onPressed: incrementarCont, child: Text("Comer una didi burger")),
        ],
      ),
    ),);
  }
}