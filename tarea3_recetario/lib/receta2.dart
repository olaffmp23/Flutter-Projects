

import 'package:flutter/material.dart';

class Receta2 extends StatefulWidget {
  const Receta2({super.key});

  @override
  State<Receta2> createState() => _Receta2State();
}

class _Receta2State extends State<Receta2> {
    
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
        title: Text("Pechugas de Pollo"),
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
            Image.asset("assets/2.png"),
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
2 pechugas de pollo deshuesadas y sin piel
2 cucharadas de aceite de oliva (puedes usar aceite de tu preferencia)
Sal al gusto
Pimienta al gusto
Opcional: ajo en polvo, paprika, o tus condimentos favoritos
                    """, style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                    SizedBox(height: 20,),
                    Text("PREPARACIÓN", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 195, 84, 24)),),
                    SizedBox(height: 10,),
                    Text("""
Comienza por sazonar las pechugas de pollo. Esparce la sal, la pimienta negra, el ajo en polvo y las hierbas secas (si las estás usando) de manera uniforme sobre ambas caras de las pechugas. Puedes ajustar la cantidad de especias según tu preferencia personal.

Calienta una sartén grande a fuego medio-alto y agrega el aceite de oliva o aceite vegetal. Deja que el aceite se caliente durante unos minutos.

Cuando el aceite esté caliente, coloca las pechugas de pollo en la sartén. Cocina las pechugas sin moverlas durante aproximadamente 6-7 minutos o hasta que estén doradas en un lado.

Voltea las pechugas con unas pinzas y cocina el otro lado durante otros 6-7 minutos o hasta que estén doradas y cocidas por completo. El tiempo de cocción puede variar según el grosor de las pechugas, así que asegúrate de verificar que el pollo esté cocido a una temperatura interna de al menos 165 grados Fahrenheit (74 grados Celsius).

Una vez cocidas, retira las pechugas de la sartén y colócalas en un plato. Cubre las pechugas con papel de aluminio y deja reposar durante unos minutos antes de servir.

Sirve las pechugas de pollo a la plancha con tus acompañamientos favoritos, como ensaladas, arroz, verduras al vapor o papas.
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