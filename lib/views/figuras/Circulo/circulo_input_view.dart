import 'package:flutter/material.dart';
import '../../../controllers/circulo_controller.dart';
import 'circulo_result_view.dart';

class CirculoInputView extends StatefulWidget {
  const CirculoInputView({super.key});

  @override
  _CirculoInputViewState createState() => _CirculoInputViewState();
}

class _CirculoInputViewState extends State<CirculoInputView> {

  TextEditingController raioController = TextEditingController();

  final controller = CirculoController();

  void calcular() {
    double raio = double.parse(raioController.text);

    var circulo = controller.calcular(raio);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CirculoResultView(circulo: circulo),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Círculo - Entrada")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: raioController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Diâmetro",
                border: OutlineInputBorder(), 
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: calcular,
              child: Text("Calcular"),
            )

          ],
        ),
      ),
    );
  }
}