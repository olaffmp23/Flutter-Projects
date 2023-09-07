import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app4',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ClimaApp'),
          backgroundColor: Colors.indigo,
        ),

        body: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8),
          color: Colors.orange,

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text("San Francisco", style: TextStyle(fontSize: 42, color: Colors.grey[100]),),
              Text("Numblado", style: TextStyle(color: Colors.grey[200]),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.wb_cloudy, color: Colors.grey[200],size: 64,),
                  Text("19 C", style: TextStyle(fontSize: 48, fontWeight: FontWeight.w200, color: Colors.grey[200]),) 
                  
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  color: Colors.yellow,
                  child: const Text("Actualizar Datos"),
                  onPressed: (){
                    ScaffoldMessenger.of(context)//aqui hay un error  que no se por que
                    ..hideCurrentSnackBar()
                    ..showSnackBar(const SnackBar(content: Text("Actualizar datos del clima...")),);
                  },//onPressed
                )      
              ),
            ],
          ),
        ),
      ),
    );
  }
}

