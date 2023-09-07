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
      title: 'Contador',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 148, 238, 248)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Contador'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


//aqui escribimos el codigo de nuestra app
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

//esta funcio aumenta el contador en 1
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
//esta funcion decrementa el contador en 1
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
//esta funcion reinicia el contrador a 0
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold( //el Scafold crea una pantalla con un appbar
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Has precionado el botón esta cantidad de veces:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),

      //aqui estamos trabajando con los botones flotantes de la parte inferior
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Disminuye',
              child: const Icon(Icons.remove),
            ),
      
            Expanded(child: Container()),

            FloatingActionButton(
              onPressed: _resetCounter,
              tooltip: 'Reinicia a 0',
              child: const Icon(Icons.refresh),
            ),
      
            Expanded(child: Container()),
      
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Incrementa',
              child: const Icon(Icons.add),
            ),
      
            
      
          ],
        ),
      ), 
    );
  }
}
