

import 'package:flutter/material.dart';

class Receta1 extends StatefulWidget {
  const Receta1({super.key});

  @override
  State<Receta1> createState() => _Receta1State();
}

class _Receta1State extends State<Receta1> {
    
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
        title: Text("Pollo Frito"),
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
            Image.asset("assets/1.png"),
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
1 pollo entero cortado en piezas o 4 piezas de pollo (muslos, pechugas, etc.)
2 tazas de suero de leche (buttermilk)
2 tazas de harina de trigo
1 cucharada de sal
1 cucharadita de pimienta negra
1 cucharadita de paprika
1 cucharadita de ajo en polvo
1 cucharadita de cebolla en polvo
Aceite vegetal para freír
                    """, style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                    SizedBox(height: 20,),
                    Text("PREPARACIÓN", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 195, 84, 24)),),
                    SizedBox(height: 10,),
                    Text("""
1.- En un tazón grande, sumerge las piezas de pollo en el suero de leche. Esto ayuda a ablandar la carne y agregar sabor. Deja el pollo en el suero de leche durante al menos 30 minutos o hasta varias horas en el refrigerador.
            
2.- En otro tazón grande, mezcla la harina, la sal, la pimienta negra, la paprika, el ajo en polvo y la cebolla en polvo.
            
3.- Saca las piezas de pollo del suero de leche y escúrrelas ligeramente.

4.- Calienta suficiente aceite vegetal en una sartén grande o una freidora a unos 350 grados Fahrenheit (180 grados Celsius). Debes tener suficiente aceite para sumergir las piezas de pollo.

5.- Mientras el aceite se calienta, pasa cada pieza de pollo por la mezcla de harina, asegurándote de que estén bien cubiertas. Luego, sacude el exceso de harina.

6.- Cuando el aceite esté caliente, coloca las piezas de pollo en la sartén, asegurándote de no sobrecargarla. Puedes freír el pollo en lotes si es necesario.

7.- Fríe el pollo durante aproximadamente 15-20 minutos, o hasta que esté dorado y cocido por dentro (la temperatura interna debe alcanzar al menos 165 grados Fahrenheit o 74 grados Celsius). Voltea las piezas de pollo ocasionalmente para que se cocinen de manera uniforme.

8.- Una vez que el pollo esté dorado y cocido, retíralo de la sartén y colócalo sobre papel absorbente para eliminar el exceso de aceite.

9.- Sirve el pollo frito caliente. Puedes acompañarlo con salsas, ensaladas, papas fritas o cualquier otro acompañamiento de tu elección.
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