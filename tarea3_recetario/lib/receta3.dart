

import 'package:flutter/material.dart';

class Receta3 extends StatefulWidget {
  const Receta3({super.key});

  @override
  State<Receta3> createState() => _Receta3State();
}

class _Receta3State extends State<Receta3> {
    
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
        title: Text("Taquitos"),
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
            Image.asset("assets/3.png"),
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
500 gramos de carne de res (como bistec, arrachera o falda) cortada en tiras finas
2 cucharadas de aceite vegetal
1 cucharadita de comino molido
1 cucharadita de chile en polvo
1 cucharadita de ajo en polvo
1/2 cucharadita de paprika
1/2 cucharadita de pimienta negra
1/2 cucharadita de sal
1 cebolla roja, picada finamente
1/2 taza de cilantro fresco picado
1/2 taza de salsa de tomate (opcional)
12 tortillas de maíz pequeñas
Limones para servir
                    """, style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                    SizedBox(height: 20,),
                    Text("PREPARACIÓN", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 195, 84, 24)),),
                    SizedBox(height: 10,),
                    Text("""
En un tazón, mezcla el comino molido, el chile en polvo, el ajo en polvo, la paprika, la pimienta negra y la sal.

Agrega las tiras de carne de res a la mezcla de especias y mezcla bien para asegurarte de que la carne esté sazonada de manera uniforme. Deja marinar durante al menos 15 minutos en el refrigerador.

Calienta el aceite en una sartén grande a fuego medio-alto. Una vez caliente, agrega las tiras de carne marinada y cocínalas durante unos 3-5 minutos o hasta que estén doradas y cocidas a tu nivel de preferencia (algunas personas prefieren la carne más cocida que otras).

Mientras se cocina la carne, calienta las tortillas de maíz en una sartén seca o en el microondas.

Una vez que la carne esté cocida, retírala de la sartén y en la misma sartén, agrega la cebolla picada. Cocina la cebolla durante unos minutos hasta que esté tierna y ligeramente caramelizada.

Para armar los taquitos, coloca una porción de carne cocida en el centro de cada tortilla caliente. Luego, agrega cebolla caramelizada, cilantro fresco y una cucharada de salsa de tomate si lo deseas.

Sirve los taquitos de res con limones para que cada persona pueda exprimir jugo de limón fresco sobre ellos antes de comer.
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