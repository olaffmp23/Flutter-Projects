import 'dart:math';
import 'package:flutter/material.dart';



class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  int _numGen = 0; 
  
  int _aleatorio(){
    final random = Random();
    int n = 0;
    return n = random.nextInt(100);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 52, 150, 231), Color.fromARGB(255, 135, 180, 224)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            )
        ),
        padding: const EdgeInsets.all(50) ,
        child: Column(
          children: [

            const Text("Genere un numero random", style: TextStyle(color: Colors.purple, fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            Text("$_numGen", style: TextStyle(fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            TextButton(
              onPressed: (){
                setState(() {
                  _numGen =_aleatorio();
                });
              }, 
              child: Text('Generar',style: TextStyle(color: Colors.black),),
              style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 217, 217, 217),),
              
              ),
              TextButton(
              onPressed: (){
                Navigator.pop(context, _numGen);
              }, 
              child: Text('Guardar',style: TextStyle(color: Colors.black),),
              style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 217, 217, 217),),
              )
              
          ],
        ),
      ),
    );
  }
}