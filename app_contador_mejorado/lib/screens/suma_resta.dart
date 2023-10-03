import 'package:app_contador_mejorado/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SumaResta extends StatefulWidget {
  const SumaResta({super.key});

  @override
  State<SumaResta> createState() => _SumaRestaState();
}

class _SumaRestaState extends State<SumaResta> {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                      setState(() {
                        context.read<CounterProvider>().decrement();    
                      });
                    },
                    tooltip: 'Disminuye',
                    child: const Icon(Icons.remove),
                  ),
                      
                  Expanded(child: Container()),
            
                  FloatingActionButton(
                    onPressed: (){
                      setState(() {
                        context.read<CounterProvider>().reset0();    
                      });
                    },
                    tooltip: 'Reinicia a 0',
                    child: const Icon(Icons.refresh),
                  ),
                      
                  Expanded(child: Container()),
                      
                  FloatingActionButton(
                    onPressed: (){
                      setState(() {
                        context.read<CounterProvider>().increment();    
                      });
                    },
                    tooltip: 'Incrementa',
                    child: const Icon(Icons.add),
                  ),
                  
              
                  
                      ],
                    ),
            ),
        ],
      ),
    );
  }
}