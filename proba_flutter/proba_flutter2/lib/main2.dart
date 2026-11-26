import 'package:material_ui/material_ui.dart';

void main(){
 runApp(MiApp());
}

class MiApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Fiestra1());
  }
}

class Fiestra1 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (appBar: AppBar(
      title: (Text("Fiestra 1")),
    ),
    body: Center(
      child: Row(
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.push<void>(context,MaterialPageRoute(builder: (context) => Fiestra2()));
              print("Boton pulsado");
            }, 
            child: Text("Ir á fiestra 2")),
          Imagen()
          
            
        ],
        
      )));
  }
}

class Imagen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("../assets/didiburger.jpg", fit: BoxFit.scaleDown);
  }
}

class Fiestra2 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (appBar: AppBar(
      title: (Text("Fiestra 2")),
    ),
    body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push<void>(context,MaterialPageRoute(builder: (context) => Fiestra1()));
          print("Boton pulsado");
        },
        child: Text("Ir á fiestra 1"))));
  }
}
