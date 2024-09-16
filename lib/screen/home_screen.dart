import 'package:flutter/material.dart';
import 'package:page_u2/widgets/widget_drawer.dart';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
    );
  }
  
   int currentPageIndex = 0;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        title: const Text('Más Caja', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        actions: const [
         Padding(padding:  EdgeInsets.symmetric(horizontal: 16),
          child: Icon(Icons.notifications, color: Colors.white),
         ),
        ],
      ),
      drawer: const ListMenu(),
      body: Card(
        child: Container(
          color: const  Color.fromARGB(255, 33, 150, 243),
          child: const Column(
           mainAxisSize: MainAxisSize.min,         
            children: <Widget>[
                 ListTile(
                leading: Icon(Icons.emoji_emotions, color: Colors.white),
                title: Text('Hola, Usuario'),
              ),
            ],
          ),
        ),
      ),
       bottomNavigationBar: NavigationBar( 
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home, color:Color.fromARGB(255, 24, 145, 245)),
            icon: Icon(Icons.home_outlined, color:Color.fromARGB(255, 24, 145, 245)),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon:  Icon(Icons.map_sharp, color:Color.fromARGB(255, 24, 145, 245)),
            label: 'Sucursales',
          ),
          NavigationDestination(
              icon: Icon(Icons.help_outline, color:Color.fromARGB(255, 24, 145, 245)),
              label: 'Ayuda',
          ),
        ],
      ),
    )
    );
  }
  
  void setState(Null Function() param0) {}
}