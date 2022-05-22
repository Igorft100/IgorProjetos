import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StepForm(),
  ));
}

class StepForm extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<StepForm> {
  String infoTexto = "Informe seus valores";

  TextEditingController AController = TextEditingController();
  TextEditingController XController = TextEditingController();
  TextEditingController BController = TextEditingController();

  Widget buildTextField(String lebal, TextEditingController c) {
    return TextField(
      decoration: InputDecoration(
          labelText: lebal,
          labelStyle: TextStyle(color: Colors.green, fontSize: 20.0),
          border: OutlineInputBorder()),
      style: TextStyle(color: Colors.green, fontSize: 20.0),
      keyboardType: TextInputType.number,
      controller: c,
    );
  }

  void _resetFielde() {
    setState(() {
      AController.text = "";
      XController.text = "";
      BController.text = "";
      infoTexto = "";
    });
  }

  void _calculate() {
    double A = double.parse(AController.text);
    double X = double.parse(XController.text);
    double B = double.parse(BController.text);
    double f1g = (A * X) + B;
    setState(() {
      if (f1g == f1g) {
        infoTexto = "A raíz é ($f1g)";
      } else if (f1g == f1g) {
        infoTexto = "A raíz é ($f1g)";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Função do 1ª Grau"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _resetFielde();
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
              child: Text(
                'CALCULE A RAIZ',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              child: Text(
                'FÓRMULA: Y = ax + b',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            buildTextField("A (a)", AController),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
            ),
            buildTextField("X (x)", XController),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
            ),
            buildTextField("B (b)", BController),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                infoTexto,
                style: TextStyle(color: Colors.green, fontSize: 25.0),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  child: Text(
                    "Calcular",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                  onPressed: () {
                    _calculate();
                  },
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
