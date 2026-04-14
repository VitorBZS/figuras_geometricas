import 'package:flutter/material.dart';
import '../../../controllers/retangulo_controller.dart';
import 'retangulo_result_view.dart';

class RetanguloInputView extends StatefulWidget {
  const RetanguloInputView({super.key});

  @override
  _RetanguloInputViewState createState() => _RetanguloInputViewState();
}

class _RetanguloInputViewState extends State<RetanguloInputView> {

  TextEditingController baseController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  final controller = RetanguloController();

  void calcular() {
    double base = double.parse(baseController.text);
    double altura = double.parse(alturaController.text);

    var retangulo = controller.calcular(base, altura);

    if(base == altura){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Os valores precisam ser diferentes"))
      );
    }
    else{
      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RetanguloResultView(retangulo: retangulo),
      ),
    );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Retângulo - Entrada")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: baseController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Base",
              border: OutlineInputBorder()),
            ),

            SizedBox(height: 20),

            TextField(
              controller: alturaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Altura",
              border: OutlineInputBorder()),
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