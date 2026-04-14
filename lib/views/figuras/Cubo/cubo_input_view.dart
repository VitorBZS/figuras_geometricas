import 'package:flutter/material.dart';
import '../../../controllers/cubo_controller.dart';
import 'cubo_result_view.dart';

class CuboInputView extends StatefulWidget {
  const CuboInputView({super.key});

  @override
  _CuboInputViewState createState() => _CuboInputViewState();
}

class _CuboInputViewState extends State<CuboInputView> {

  TextEditingController arestasController = TextEditingController();

  final controller = CuboController();

  void calcular() {
    double arestas = double.parse(arestasController.text);

    var cubo = controller.calcular(arestas);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CuboResultView(cubo: cubo),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cubo - Entrada")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: arestasController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Aresta",
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