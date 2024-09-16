import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return  Drawer(
       child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                  Expanded(child: 
                  Image.asset('assets/home.jpeg'),
                    ),
                   const SizedBox(
                    height: 10.0,
                   )
                    ]
              ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Home'),
                onTap: (){},

              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Mi cuenta'),
                onTap: (){},

              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Asignación Familiar'),
                onTap: (){},

              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Mis creditos'),
                onTap: (){},

              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Mis Licencias'),
                onTap: (){},

              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Mis seguros'),
                onTap: (){},

              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Mis certificado'),
                onTap: (){},

              ),
            ],
          ),
    );
  }
}