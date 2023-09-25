

import 'package:flutter/material.dart';

class Receta5 extends StatefulWidget {
  const Receta5({super.key});

  @override
  State<Receta5> createState() => _Receta5State();
}

class _Receta5State extends State<Receta5> {
    
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
        title: Text("Pizza"),
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
            Image.asset("assets/5.png"),
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

Aquí tienes una receta básica para hacer pizza casera. Puedes personalizarla con tus ingredientes favoritos. Esta receta es para una pizza grande.

Ingredientes para la masa:

1 taza de agua tibia (alrededor de 110°F o 43°C)
2 1/4 cucharaditas de levadura seca activa
2 1/2 tazas de harina de trigo
2 cucharadas de aceite de oliva
1 cucharadita de sal
1 cucharadita de azúcar

Ingredientes para la salsa de tomate:

1 lata (14-16 onzas) de tomates triturados o puré de tomate
1 diente de ajo picado (opcional)
1 cucharadita de aceite de oliva
1 cucharadita de orégano seco
Sal y pimienta al gusto

Ingredientes para la cobertura:

1 1/2 tazas de queso mozzarella rallado
Ingredientes adicionales a tu elección (por ejemplo, pepperoni, champiñones, pimientos, aceitunas, jamón, etc.)
                    """, style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                    SizedBox(height: 20,),
                    Text("PREPARACIÓN", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 195, 84, 24)),),
                    SizedBox(height: 10,),
                    Text("""
Para la masa:

En un tazón pequeño, combina el agua tibia y la levadura. Agrega el azúcar y deja reposar durante unos 5-10 minutos, hasta que la mezcla se vuelva espumosa.

En un tazón grande, mezcla la harina y la sal. Agrega la mezcla de levadura activa y el aceite de oliva. Mezcla hasta que la masa comience a formarse.

Voltea la masa sobre una superficie enharinada y amasa durante unos 5-7 minutos, o hasta que esté suave y elástica. Agrega más harina si es necesario para evitar que se pegue.

Forma la masa en una bola, colócala en un tazón aceitado, cúbrelo con un paño húmedo y deja que la masa repose en un lugar cálido durante aproximadamente 1 hora, o hasta que haya duplicado su tamaño.

Para la salsa de tomate:

Mientras la masa está subiendo, calienta una cucharadita de aceite de oliva en una sartén a fuego medio. Agrega el ajo picado y sofríelo durante unos minutos hasta que esté fragante.

Agrega los tomates triturados o el puré de tomate a la sartén, junto con el orégano, la sal y la pimienta. Cocina a fuego lento durante unos 10-15 minutos hasta que la salsa se espese.


Para montar la pizza:

Precalienta el horno a 220°C (425°F).

Una vez que la masa haya duplicado su tamaño, divídela en dos si prefieres hacer dos pizzas más pequeñas. Estira la masa en una superficie enharinada para que tenga el tamaño y la forma deseados.

Transfiere la masa estirada a una bandeja para horno o una piedra para pizza enharinada.

Extiende una capa uniforme de salsa de tomate sobre la masa, dejando un borde para los bordes de la pizza.

Agrega una capa de queso mozzarella rallado sobre la salsa.

Añade los ingredientes adicionales de tu elección.

Hornea la pizza en el horno precalentado durante unos 12-15 minutos, o hasta que la masa esté dorada y el queso burbujee y se dore.

Retira la pizza del horno, córtala en porciones y sírvela caliente.
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