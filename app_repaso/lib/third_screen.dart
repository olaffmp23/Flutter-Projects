import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 3'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: (){
              String emoji = "(•◡•)/";
              Navigator.pop(context, emoji);
            }, 
            child: const Text(" (•◡•)/",style: TextStyle(color: Colors.black)),
            style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 217, 217, 217),),
            ),

            TextButton(
            onPressed: (){
              String emoji = "ʕ•́ᴥ•̀ʔ";
              Navigator.pop(context, emoji);
            }, 
            child: const Text("ʕ•́ᴥ•̀ʔ", style: TextStyle(color: Colors.black)),
            style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 217, 217, 217),),
            ),

            TextButton(
            onPressed: (){
              String emoji = "¯_( ͡❛ ͜ʖ ͡❛)_/¯";
              Navigator.pop(context, emoji);
            }, 
            child: const Text("¯_( ͡❛ ͜ʖ ͡❛)_/¯", style: TextStyle(color: Colors.black)),
            style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 217, 217, 217),),
            )
        ],
      )
    );
  }
}