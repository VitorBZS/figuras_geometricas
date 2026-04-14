import 'package:flutter/material.dart';
import '../../../controllers/triangulo_controller.dart';
import 'triangulo_result_view.dart';

class TrianguloInputView extends StatefulWidget {
  const TrianguloInputView({super.key});

  @override
  _TrianguloInputViewState createState() => _TrianguloInputViewState();
}

class _TrianguloInputViewState extends State<TrianguloInputView> {

  TextEditingController baseController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  final controller = TrianguloController();

  void calcular() {
    double base = double.parse(baseController.text);
    double altura = double.parse(alturaController.text);

    var triangulo = controller.calcular(base, altura);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TrianguloResultView(triangulo: triangulo),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Triângulo - Entrada")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: alturaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Altura", 
                border: OutlineInputBorder(), 
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: baseController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Base",
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