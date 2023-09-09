import 'package:flutter/material.dart';
import 'package:app6_vacations/info_lugar.dart';

class HomePage extends StatelessWidget {
   HomePage({
    Key? key,
  }) : super(key: key);

final List<String> place_name = <String>['Torre Eiffel','Taj Mahal','Gran Cañón','Machu Picchu','La Gran Muralla China','Nueva York','Piramides de Egipto','Chicen-Itza','Monte Everest','Grecia'];
  final List<String> nday  = <String>['Day 1','Day 2','Day 3','Day 4','Day 5','Day 6','Day 7','Day 8','Day 9','Day 10'];
  final List<String> imag = [
    "assets/images/lugar-1.jpg",
    "assets/images/lugar-2.jpg",
    "assets/images/lugar-3.jpg",
    "assets/images/lugar-4.jpg",
    "assets/images/lugar-5.jpg",
    "assets/images/lugar-6.jpg",
    "assets/images/lugar-7.jpg",
    "assets/images/lugar-8.jpg",
    "assets/images/lugar-9.jpg",
    "assets/images/lugar-10.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration( borderRadius: BorderRadius.circular(10.0)),
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      "assets/images/banner-1.jpg", 
                      fit: BoxFit.cover,
                    ),
                  ) 
                  
                ),
              ),
              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),//widget creado por el profesor
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 120,
                                      width: 120,
                                      decoration: BoxDecoration( borderRadius: BorderRadius.circular(10.0)),
                                      child:ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset(imag[index], fit: BoxFit.cover),
                                              )
                                            ),
                                    Text(nday[index], style: TextStyle(fontSize: 11)),
                                    Text(place_name[index]),
                                  ],
                                ),
                              ); //aqui esta la lista de elementos visuales
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Reservación en progreso...")));

                      },
                      child: Text("START BOOKING", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
