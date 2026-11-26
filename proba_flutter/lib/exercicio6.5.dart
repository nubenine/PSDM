
import 'package:flutter/material.dart';

final ThemeData temaClaro = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
);

final ThemeData temaEscuro = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
);

void main() {
  runApp(const AplicacionCentro());
}

class AplicacionCentro extends StatelessWidget {
  const AplicacionCentro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Panel do centro',
      theme: temaClaro,
      darkTheme: temaEscuro,
      themeMode: ThemeMode.system,
      home: const PantallaCentro(),
    );
  }
}

class PantallaCentro extends StatelessWidget {
  const PantallaCentro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Profesorado',
                style: Theme.of(context).textTheme.titleLarge,
              ),

              const SizedBox(height: 16),

              Expanded(
                child: ListView(
                  children: const [
                    TarxetaProfesor(
                      nome: 'Diego Rodicio',
                      cargo: 'Titor de 2º DAM',
                    ),
                    TarxetaProfesor(
                      nome: 'Julia',
                      cargo: 'Profesora',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              FilledButton(
                onPressed: () {
                  print('2º DAM');
                },
                child: const Text('Consultar grupo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TarxetaProfesor extends StatelessWidget {
  final String nome;
  final String cargo;

  const TarxetaProfesor({
    super.key,
    required this.nome,
    required this.cargo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Icon(Icons.person, size: 40),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nome,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(cargo),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
