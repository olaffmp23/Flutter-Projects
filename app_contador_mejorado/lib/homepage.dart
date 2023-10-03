import 'package:app_contador_mejorado/screens/multiiplica.dart';
import 'package:app_contador_mejorado/screens/primo.dart';
import 'package:app_contador_mejorado/screens/suma_resta.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedPage = 0;

  final List<Widget> _pages = [
    SumaResta(),
    Multiplica(),
    Primo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador 2.0'),
      ),
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index){
          setState(() {
            _selectedPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.one_k), label: 'Suma'),
          BottomNavigationBarItem(icon: Icon(Icons.two_k), label: 'Multiplica'),
          BottomNavigationBarItem(icon: Icon(Icons.three_k), label: 'Primo'),

        ],
      ),
      );

  }
}