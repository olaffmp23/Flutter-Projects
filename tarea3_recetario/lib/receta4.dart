

import 'package:flutter/material.dart';

class Receta4 extends StatefulWidget {
  const Receta4({super.key});

  @override
  State<Receta4> createState() => _Receta4State();
}

class _Receta4State extends State<Receta4> {
    
    bool _addFav = false;
    
    void estrellaPrecionada() {
    setState(() {
       _addFav = ! _addFav;
    });

    final snackBarMensaje = _addFav ? 'Se agregó a favoritos' : 'Se eliminó de favoritos';
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(snackBarMensaje),
        duration: Duration(seconds: 2),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Hamburguesa"),
        backgroundColor: Color.fromARGB(255, 60, 37, 28),
        actions: [
          IconButton(
            icon:  _addFav ? Icon(Icons.star) : Icon(Icons.star_border),
            onPressed: estrellaPrecionada,
            color:  _addFav ? Colors.yellow : null,)
        ],

      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/4.png"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20,),
                  Text("INGREDIENTES", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 195, 84, 24),),),
                  SizedBox(height: 10,),
                  Text("""
500 gramos de carne molida (puedes usar carne de res, cerdo, pavo o una mezcla)
1/2 cucharadita de sal
1/2 cucharadita de pimienta negra
1/2 cucharadita de ajo en polvo
1/2 cucharadita de cebolla en polvo
4 bollos de hamburguesa
Hojas de lechuga
Rodajas de tomate
Rodajas de cebolla
Queso (opcional)
Condimentos y salsas de tu elección (ketchup, mostaza, mayonesa, etc.)
                    """, style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                    SizedBox(height: 20,),
                    Text("PREPARACIÓN", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 195, 84, 24)),),
                    SizedBox(height: 10,),
                    Text("""
En un tazón grande, mezcla la carne molida con la sal, la pimienta negra, el ajo en polvo y la cebolla en polvo. Asegúrate de que las especias estén bien distribuidas en la carne.

Divide la mezcla de carne en cuatro partes iguales y forma cada una en una bola. Luego, aplasta cada bola para formar una hamburguesa del tamaño de tus bollos de hamburguesa.

Calienta una parrilla o sartén grande a fuego medio-alto y asegúrate de que esté bien caliente antes de cocinar las hamburguesas.

Cocina las hamburguesas en la parrilla o sartén durante aproximadamente 4-5 minutos por cada lado, o hasta que estén cocidas a tu nivel de preferencia. Si deseas agregar queso, coloca una loncha de queso en cada hamburguesa durante los últimos minutos de cocción para que se derrita.

Mientras se cocinan las hamburguesas, puedes tostar ligeramente los bollos en la parrilla o en una tostadora.

Para armar las hamburguesas, coloca una hoja de lechuga en la parte inferior del bollo, seguida de la hamburguesa cocida, rodajas de tomate, rodajas de cebolla y otros condimentos y salsas a tu gusto.

Cubre las hamburguesas con la parte superior de los bollos y sírvelas calientes.
                    """,
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),)
                ],
              )),
            ),
            
          ],
      ),
      )
      

    );
  }
  
}