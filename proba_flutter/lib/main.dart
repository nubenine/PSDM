import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//quita lo de debug
      // home: OMeuTexto("Texto", corFondo: Colors.amber,), 
      home: WidgetPrincipal(),

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
        Text(texto!)
      ],
    )
        
      );
  }
}

class Outro extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: SingleChildScrollView(
      child: Column(
        children: [
          Container(height: 200.0, color: Colors.red,),
          Container(height: 200.0, color: Colors.amber,),
          Container(height: 200.0, color: Colors.red,),
        ],
      )
    )

    );
  }
}

class WidgetPrincipal extends StatelessWidget {
  const WidgetPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    var alumnos = ["NiggaOne", "NiggaTwo", "NiggaThree", "NiggaFour"];
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (contexto, indice) => Divider(),
        itemCount: alumnos.length,
        itemBuilder: (contexto, indice){
        return ListTile(
          trailing: Icon(Icons.chevron_right),
          title: Text(alumnos[indice]),
        );
      }),
    );
  }
}

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Sicseben"),
              subtitle: Text("sic sebe"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Sicseben"),
              subtitle: Text("sic sebe"),
            ),
            ListTile(
              leading: Icon(Icons.gamepad_sharp),
              title: Text("Sicseben"),
              subtitle: Text("sic sebe"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Sicseben"),
              subtitle: Text("sic sebe"),
              trailing: Icon(Icons.chevron_right),
            )
          ],
        )
    );
  }
}