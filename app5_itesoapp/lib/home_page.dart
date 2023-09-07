import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

List<Color> _coloresB = [
  Colors.black,
  Colors.black,
  Colors.black,
  Colors.black,

];

int _likes = 956;


void _cambiarColor(int index){
  setState(() {
    _coloresB[index] = _coloresB[index] == Colors.blue ? Colors.black :Colors.blue;
  });
  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App ITESO'),
        ),

        //Aqui escribimos todo lo que estara dentro del Boddy de la app
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          
          child: Column(
            children: [
              //aqui agregamos la imagen
              Container(
                //width: MediaQuery.of(context).size.width,//ancho completo de la pantalla
                child: 
                Image.network("https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg", fit: BoxFit.cover)//esto escala la imagen para que ocupe todo el ancho
              ),
              
              //aqui vamos a crear el texto con iconos
              
                  
              ListTile(
                title: const Text("El ITESO, Universidad Jesuita de Guadalajara", style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: const Text("San Pedro Tlaquepaque, Jal.", style: TextStyle(fontWeight: FontWeight.w200),),
                trailing: IconButton(
                  color: _coloresB[3],
                  onPressed: (){
                    _cambiarColor(3);
                    _likes++;
                  }, 
                  icon: Icon(Icons.thumb_up),
                  ),
              ),
              //SizedBox(width: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: 60, height: 10,),
                  Text("$_likes"),
                ],
              ),
              const SizedBox(height: 20,),
              
              //aqui vamos a crear la fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        iconSize: 48,
                        color: _coloresB[0],
                        onPressed: (){
                          _cambiarColor(0);
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Contactanos atraves del correo contacto@iteso.mx"),
                              duration: Duration(seconds: 2),
                              ));
                        }, 
                        icon: Icon(Icons.mail)
                      ),
                      const Text("Correo"),
                    ],
                  ),
                  
                  Column(
                    children: [
                      IconButton(
                        iconSize: 48,
                         color: _coloresB[1],
                        onPressed: (){
                          _cambiarColor(1);
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Llama al (123) 456-7890"),
                              duration: Duration(seconds: 2),
                              ));
                        }, 
                        icon: Icon(Icons.phone)
                      ),
                      Text("Llamada"),
                    ],
                  ),

                  Column(
                    children: [
                      IconButton(
                        iconSize: 48, 
                        color:  _coloresB[2],
                        onPressed: (){
                          _cambiarColor(2);
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Se encuentra ubicado en Periférico Sur 8585"),
                              duration: Duration(seconds: 2),
                              ));
                        }, 
                        icon: Icon(Icons.directions),),
                      Text("Ruta"),
                    ],

                  )

                ],
              ),
              //aqui agregamos el texto de la parte inferior
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('''El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara''', textAlign: TextAlign.justify,),
              ),
              
            ],
          ),
        ),
      );
  }
}