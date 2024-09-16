import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});
  @override
  Widget build(BuildContext context) {
     final opciones = [
      'Home',
      'Mi cuenta',
      'Asignación Familiar',
      'Mis creditos',
      'Mis Licencias',
      'Mis seguros',
      'Mis certificado',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListScreen'),
      ),
        body: ListView.separated(
          itemCount: opciones.length,
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.inventory),
            title: Text(opciones[index]),
            trailing: const Icon(Icons.arrow_back),
            onTap: () {
              final nommbre = opciones[index];
              Navigator.pushNamed(context, 'detail',
                  arguments: {'nombre': nommbre});
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}