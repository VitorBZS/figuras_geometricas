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
    double? base = double.tryParse(baseController.text.replaceAll(",", "."),
    );
    double? altura = double.tryParse(alturaController.text.replaceAll(",", "."),
    );
    
    if (base == null || altura == null) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Erro"),
          content: Text("Digite números válidos."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        ),
      );
    return;
  }
  else
  {
      var triangulo = controller.calcular(base, altura);
      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TrianguloResultView(triangulo: triangulo),
      ),
    );
    } 
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