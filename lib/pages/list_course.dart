import 'package:flutter/material.dart';
//import 'package:myapp/cursos/teologia/ruta1.dart';

class ListCoursePage extends StatelessWidget {
  const ListCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Course'),
      ),
      body: ListView.builder(
        itemCount: 10, // Número de enlaces que deseas mostrar
        itemBuilder: (context, index) {
          final routeName = 'Ruta${index + 1}'; // Nombre de la ruta consecutiva
          return ListTile(
            title: Text(routeName),
            onTap: () {
              Navigator.pushNamed(context, routeName); // Navegar a la ruta correspondiente
            },
          );
        },
      ),
    );
  }
}

