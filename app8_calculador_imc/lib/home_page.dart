import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  //variables
  
  var alturaController = TextEditingController();
  var pesoController = TextEditingController();
  bool? genero; 

  final String _mj = '''
Tabla para mujer
  ''';
  final String _hm = '''
tabla para hombre
  ''';


  //codigo del programa
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calculadora de IMC'),

          //aqui agregamos un icono con una funcion en el appbar
          actions: [
            IconButton(
              tooltip: "Borra todo",
              onPressed: (){
                alturaController.clear();
                pesoController.clear();
                genero = null;
                setState(() {}); //para que se apliquen los cambios visualmente en pantalla
              },
              icon: const Icon(Icons.delete),
              ), 
           ],
          ),
            
        body:  Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 12),
          child: ListView(
            children: [
              const Text('Ingrese datos para calcular IMC'),
              
              // iconos de sexo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  //Boton de Hombre
                  IconButton(
                    onPressed: (){
                      genero = false;
                      setState(() {});
                    }, 
                    icon: Icon(
                      Icons.male, 
                      color: genero == false ? Colors.indigo : Colors.grey, //si el genero es igual a falso, toma el azul y si no toma el gris
                      ),
          
                    ),
                    
                    //Boton de mujer
                    IconButton(
                      onPressed: (){
                        genero = true;
                        setState(() {});
                      },
                      icon: Icon(Icons.female, color:genero == true ? Colors.indigo: Colors.grey,)
                    ), 
                      
                ],
              
              ),

              //campos editables de texto de altura
              TextField(
                controller: alturaController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(Icons.height),
                  labelText: "Ingrese Altura",
                  border: OutlineInputBorder(),
                ),

              ),

              //agregamos un espaciador
              const SizedBox(
                height: 24,
              ),

              //agregamos el controlador de peso
              TextField(
                controller: pesoController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(Icons.monitor_weight),
                  labelText: "Ingrese su peso",
                  border: OutlineInputBorder(),
                ),
              ),
              
              //este sera el boton que calculara el IMC
              MaterialButton(
                child: const Text("Calcular"),
                onPressed: (){
                  showIMC();
                }),

            ],
          ),
        ),
        );
  }

  //este metodo lo que hace es convertir los textos a double y retorna el valor
  double _imc(){
    double peso = double.parse(pesoController.text);
    double altura = double.parse(alturaController.text);
    return (peso/ (altura*altura));
  }//_imc

  //este otro metodo lo que hace es mostrar un cuadro de dialogo
  void showIMC(){
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          title: Text("Tu IMC: ${_imc()}") ,
          content: Text(genero == true ? _mj : _hm), //aqui le decimos que variable va a mostrar, con un condicional 
          actions: [
            TextButton(
              onPressed: (){Navigator.of(context).pop();}, 
              child: const Text("Aceptar"))
          ],
        );
      }
      );
  }//showIMC
}
