import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{  


  List<Color> _colorButton = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];

  void _changeColor(int index){
   setState(() {
     _colorButton[index] = _colorButton[index] == Colors.indigo ? Colors.black : Colors.indigo;
   }); 
  }
  
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mc Flutter'),
        ),
        
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 400,
            height: 170 ,
            decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2.0)),
            padding: EdgeInsets.all(8),
            child:  Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: 
                    ListTile(
                      title: Text("Flutter McFlutter", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                      subtitle: Text("Experimented App Developer"),
                      leading: Icon(Icons.person_2_rounded),
                    ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Main Street"),
                    Text("(123) 121-1231")
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    //icono 1
                    IconButton(
                      icon: Icon(Icons.person_4),
                      color: _colorButton[0],
                      onPressed:(){
                        _changeColor(0); 
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text("Usuario...", style: TextStyle(color: Colors.white),),
                            duration: const Duration(seconds: 2),
                            ),
                          );
                         }, 
                    ),

                    //icono 2
                    IconButton(
                      icon: Icon(Icons.timer),
                      color: _colorButton[1],
                      onPressed:(){
                        _changeColor(1); 
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text("Usuario...", style: TextStyle(color: Colors.white),),
                            duration: const Duration(seconds: 2),
                            ),
                          );
                         }, 
                    ),

                    //icono 2
                    IconButton(
                      icon: Icon(Icons.phone_android),
                      color: _colorButton[2],
                      onPressed:(){
                        _changeColor(2); 
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text("Celular 1...", style: TextStyle(color: Colors.white),),
                            duration: const Duration(seconds: 2),
                            ),
                          );
                         }, 
                    ),

                    //icono 2
                    IconButton(
                      icon: Icon(Icons.phone_android),
                      color: _colorButton[3],
                      onPressed:(){
                        _changeColor(3); 
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text("Celular 2...", style: TextStyle(color: Colors.white),),
                            duration: const Duration(seconds: 2),
                            ),
                          );
                         }, 
                    ),



                    

                    

                  ],
                )
              ],
            ),

            
          ),
        ),
      );
  }
}
