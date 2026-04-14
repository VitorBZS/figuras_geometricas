import 'package:flutter/material.dart';
import '../../../controllers/losango_controller.dart';
import 'losango_result_view.dart';

class LosangoInputView extends StatefulWidget {
  const LosangoInputView({super.key});

  @override
  _LosangoInputViewState createState() => _LosangoInputViewState();
}

class _LosangoInputViewState extends State<LosangoInputView> {

  TextEditingController diagonalMaiorController = TextEditingController();
  TextEditingController diagonalMenorController = TextEditingController();

  final controller = LosangoController();

  void calcular() {
    double dMaior = double.parse(diagonalMaiorController.text);
    double dMenor = double.parse(diagonalMenorController.text);

    var losango = controller.calcular(dMaior, dMenor);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LosangoResultView(losango: losango),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Losango - Entrada")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: diagonalMaiorController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Diagonal Maior",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: diagonalMenorController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Diagonal Menor",
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