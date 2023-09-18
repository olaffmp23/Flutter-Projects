import 'package:app_repaso/second_screen.dart';
import 'package:app_repaso/third_screen.dart';
import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  //declaracion de varianles
  final TextEditingController _textController = TextEditingController();
  String _textFieldValue = "";
  String emoji = "";
  int valorRecibido = 0;

  void _navegarASegundaPantalla() async {
    final resultado = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondScreen(),
      ),
    );

      setState(() {
        valorRecibido = resultado;
      });
    
  }

  void _navegarATerceraPantalla() async {
    final resultado = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ThirdScreen(),
      ),
    );

      setState(() {
        emoji = resultado;
      });
    
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Ingrese los datos'),
          content: TextField(
            controller: _textController,
            decoration: const InputDecoration(hintText: 'Ingrese palabra'),
            onChanged: (value) {
              setState(() {
                _textFieldValue = value;
              });
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () async{
                Navigator.of(context).pop();
                //Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen(),));
                //final resultado = await Navigator.of(context).pushNamed(SecondScreen());
                _navegarASegundaPantalla();
                _textController.clear();
              },
              child: const Text('Aceptar') ,
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tarea 1'),
        ),
        body:  Column(
          children: [
            const Text("BIENVENIDOS", style: TextStyle(fontFamily: 'Pacifico', fontSize: 35, color: Color.fromARGB(255, 106, 106, 106))),
            Image.asset("assets/dart_black.png"),
            const SizedBox(height: 30,),
            const Text("Seleccione una accion a realizar: ", style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 40,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            TextButton(
                onPressed: () {
                  _showDialog();
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen(),)); 
                  //print('Botón 1 presionado');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue, // Cambia el color de fondo
                ),
                child: const Text('Página 2', style: TextStyle(color: Colors.white), // Color del texto
                ),
                
            ),

            TextButton(
                onPressed: () {
                  _navegarATerceraPantalla();
                  //Navigator.push(
                   // context, 
                    //MaterialPageRoute(builder: (context) => const ThirdScreen(),));
                  
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue, // Cambia el color de fondo
                ),
                child: const Text('Página 3', style: TextStyle(color: Colors.white), // Color del texto
                ),
            )
              ],
            ),
            SizedBox(height: 50,),
            Text("Pg.2 => $_textFieldValue $valorRecibido"),
            const SizedBox(height: 20,),
            Text("Pg.3 => $emoji"),


          ],
        )
        


        ),
      );
  }
}