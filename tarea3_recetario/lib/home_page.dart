import 'package:flutter/material.dart';
import 'package:tarea3_recetario/receta1.dart';
import 'package:tarea3_recetario/receta2.dart';
import 'package:tarea3_recetario/receta3.dart';
import 'package:tarea3_recetario/receta4.dart';
import 'package:tarea3_recetario/receta5.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Quick & Easy'),
          backgroundColor: Color.fromARGB(255, 60, 37, 28),
        ),
        body: 
        ListView(
          children: [
            InkWell(
              child: _myCard("assets/1.png", "Pollo Frito", "20 min","Simple", "Expensive"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Receta1(),));
              },
            ),

            InkWell(
              child:  _myCard("assets/2.png", "Pechugas a la Plancha", "30 min","Dificil", "Afforable"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Receta2(),));
              },
            ),

            InkWell(
              child: _myCard("assets/3.png", "Taquitos", "20 min","Simple", "Expensive"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Receta3(),));
              },
            ),

            InkWell(
              child: _myCard("assets/4.png", "Hamburguesas", "30 min","Dificil", "Afforable"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Receta4(),));
              },
            ),

            InkWell(
              child: _myCard("assets/5.png", "Pizza", "40 min","Simple", "Expensive"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Receta5(),));
              },
            ),
          ],
        )
            
        ),
        );
  }
  



Widget _myCard(String _img, _nomReceta,_duracion, _dificultad, _costo ){
  return Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        
        child: Stack(
          children: [
            
            Container(
              height: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(_img),
              )
            ),

            Positioned(
              top: 150,
              left: 0,
              right: 0,
              child:  Container(
                    height: 100,
                    color: Colors.black.withOpacity(0.7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(_nomReceta, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            
                            Row(
                              children: [
                                Icon(Icons.timer, color: Colors.white, size: 15,),
                                Text(" $_duracion", style: TextStyle(color: Colors.white, fontSize: 15)),
                              ]
                            ),

                            Row(
                              children: [
                                Icon(Icons.badge, color: Colors.white, size: 15,),
                                Text(" $_dificultad", style: TextStyle(color: Colors.white, fontSize: 15)),
                              ]
                            ),

                            Row(
                              children: [
                                Icon(Icons.monetization_on, color: Colors.white, size: 15,),
                                Text(" $_costo", style: TextStyle(color: Colors.white, fontSize: 15)),
                              ]
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
              
            ),
          

          ],
        ) 
      );
}
}