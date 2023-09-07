import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Variables
  TextEditingController _costoController = TextEditingController();
  int? _valorSeleccionado = 20;
  bool _redondeo = false;
  double _propinaF = 0;
  String _ppf = "";

  double _calcularPropina(double c, int? p, bool r) {
    double _pf = c * (p ?? 0) / 100;
    if (r) {
      return _pf.ceilToDouble();
    } else {
      return _pf;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tip Time"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 18, left: 18, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1º - Text Field
            TextField(
              controller: _costoController, // Usar el controlador
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                icon: Icon(Icons.food_bank),
                labelText: "Costo Del Servicio",
                border: OutlineInputBorder(),
              ),
            ),

            // 2º ListTile "How was the service?"
            ListTile(
              title: Text("How was the service?"),
              leading: Icon(Icons.star),
            ),

            // 3º Aquí van los RadioListTile
            Column(
              children: [
                RadioListTile(
                  title: Text("Amazing (20%)"),
                  activeColor: Colors.green,
                  value: 20,
                  groupValue: _valorSeleccionado,
                  onChanged: (value) {
                    setState(() {
                      _valorSeleccionado = value;
                    });
                  },
                ),

                RadioListTile(
                  title: Text("Good (15%)"),
                  activeColor: Colors.green,
                  value: 15,
                  groupValue: _valorSeleccionado,
                  onChanged: (value) {
                    setState(() {
                      _valorSeleccionado = value;
                    });
                  },
                ),

                RadioListTile(
                  title: Text("Okay (10%)"),
                  activeColor: Colors.green,
                  value: 10,
                  groupValue: _valorSeleccionado,
                  onChanged: (value) {
                    setState(() {
                      _valorSeleccionado = value;
                    });
                  },
                ),
              ],
            ),

            // 4º
            Row(
              children: [
                Icon(Icons.arrow_upward_outlined),
                SizedBox(width: 10,),
                Text("Round Up Tip?", style: TextStyle(fontSize: 17),),
                Spacer(flex: 1,),
                Switch(
                  value: _redondeo,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      _redondeo = value;
                    });
                  },
                )
              ],
            ),

            // 5º
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  double costo = double.tryParse(_costoController.text) ?? 0;//aqui se hace una conversion de datos a double
                  _propinaF = _calcularPropina(costo, _valorSeleccionado, _redondeo);
                  _ppf = _propinaF.toStringAsFixed(2);
                  setState(() {});
                },
                child: Text("CALCULATE"),
              ),
            ),

            // 6º
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Propina Final: \$$_ppf", style: TextStyle(fontSize: 15)),
              ],
            ),
          ], // Hijos del column inicial
        ),
      ),
    );
  }
}
