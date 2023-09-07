import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Birthday Card'),
        ),
        
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            //hijo 1 - usamos un container para poder alinear el texto donde queremos
            Container(
              alignment: Alignment.bottomLeft,
              child: const Text("Happy Birthday App", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            ),
            //hijo 2 - aqui insertamos la imagen
            Image.network('https://wishes.moonzori.com/wp-content/uploads/2023/04/Happy-Birthday-Birthday-Wishes-and-Images-Moonzori.png'),
            //hijo 3 - aqui insertamos el otro texto y lo agregamos con el container para alinearlo donde queramos
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 40),
              child: const Text("From me", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          ],
        ),
        ),
      );
  }
}