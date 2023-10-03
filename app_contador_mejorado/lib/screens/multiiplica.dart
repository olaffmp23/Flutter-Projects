import 'package:app_contador_mejorado/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Multiplica extends StatefulWidget {
  const Multiplica({super.key});

  @override
  State<Multiplica> createState() => _MultiplicaState();
}

class _MultiplicaState extends State<Multiplica> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text(context.watch<CounterProvider>().counter.toString(), style: TextStyle(fontSize: 40),),
          ),
          Expanded(child: Container()),
          
          
          Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  
                  FloatingActionButton(
                    onPressed: (){
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Se multiplico x2'),duration: Duration(seconds: 2),)); // Duración del mensaje en pantalla,
                      setState(() {
                        context.read<CounterProvider>().multiDos();    
                      });
                    },
                    tooltip: 'Multiplica x2',
                    child: const Text("x2", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                      
                  Expanded(child: Container()),

                  FloatingActionButton(
                    onPressed: (){
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Se multiplico x3'),duration: Duration(seconds: 2),)); // Duración del mensaje en pantalla,
                      setState(() {
                        context.read<CounterProvider>().multiTres();    
                      });
                    },
                    tooltip: 'Multiplica x3',
                    child: const Text("x3", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                              
                  Expanded(child: Container()),
                      
                   FloatingActionButton(
                    onPressed: (){
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Se multiplico x5'),duration: Duration(seconds: 2),)); // Duración del mensaje en pantalla,
                      setState(() {
                        context.read<CounterProvider>().multiCinco();    
                      });
                    },
                    tooltip: 'Multiplica x5',
                    child: const Text("x5", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  
              
                  
                      ],
                    ),
            ),
        ],
      ),
    );
  }
}