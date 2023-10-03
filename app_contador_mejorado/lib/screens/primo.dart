import 'package:app_contador_mejorado/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Primo extends StatefulWidget {
  const Primo({super.key});

  @override
  State<Primo> createState() => _PrimoState();
}

class _PrimoState extends State<Primo> {

  bool esPrimo = false; 

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
            ifPrimo(context.watch<CounterProvider>().counter) ? 'Es primo' : 'No es primo',
            style: TextStyle(
              fontSize: 24,
              color: ifPrimo(context.watch<CounterProvider>().counter) ? Colors.green : Colors.blue,
            ),
          ),
      );
  }

  bool ifPrimo(int _counter) {
  if (_counter < 1) {
    return false;
    
  }
  if (_counter <= 3) {
    return true;
  }
  if (_counter % 2 == 0 || _counter % 3 == 0) {
    return false;
  }
  int i = 5;
  while (i * i <= _counter) {
    if (_counter % i == 0 || _counter % (i + 2) == 0) {
      return false;
    }
    i += 6;
  }
  return true;
}
}