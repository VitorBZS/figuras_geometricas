import 'package:flutter/material.dart';
import '../../../models/losango_model.dart';

class LosangoResultView extends StatelessWidget {

  final Losango losango;

  const LosangoResultView({super.key, required this.losango});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultado Losango")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Diagonal Maior: ${losango.diagonalMaior}"),
            Text("Diagonal Menor: ${losango.diagonalMenor}"),

            SizedBox(height: 20),

            Text("Área: ${losango.area().toStringAsFixed(2)}"),
            Text("Perímetro: ${losango.perimetro().toStringAsFixed(2)}"),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Voltar"),
            )

          ],
        ),
      ),
    );
  }
}