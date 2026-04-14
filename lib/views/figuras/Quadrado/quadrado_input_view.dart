import 'package:flutter/material.dart';
import '../../../controllers/quadrado_controller.dart';
import 'quadrado_result_view.dart';

class QuadradoInputView extends StatefulWidget {
  const QuadradoInputView({super.key});

  @override
  _QuadradoInputViewState createState() => _QuadradoInputViewState();
}

class _QuadradoInputViewState extends State<QuadradoInputView> {

  TextEditingController ladoController = TextEditingController();

  final controller = QuadradoController();

  void calcular() {
    double lado = double.parse(ladoController.text);

    var quadrado = controller.calcular(lado);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuadradoResultView(quadrado: quadrado),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quadrado - Entrada")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: ladoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Lado",
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