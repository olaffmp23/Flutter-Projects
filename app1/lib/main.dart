import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Mas Utilizados',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 138, 200, 214)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


//Aqui es donde comenzamos a escribir los codigos para irle dando forma a nuestra app
class _MyHomePageState extends StatelessWidget {
  const MyHomePage({Super.key});

  //codigo nuevo
    @overide 
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 81, 255, 235), 
          title: const Text('Widgets Mas Utilizados'),
          ),
          body: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(Icons.thumb_up), 
                  Text('507')
                  ],
                )
                SizedBox(width: 100,), 
                Column(
                  children: [
                    Icon(Icons.thumb_down),
                    text('507'),
                  ],
                )

              ]
            ,)


      )
    }
}


