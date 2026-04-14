import 'package:flutter/material.dart';
import '../../../models/quadrado_model.dart';

class QuadradoResultView extends StatelessWidget {

  final Quadrado quadrado;

  const QuadradoResultView({super.key, required this.quadrado});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultado Quadrado")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Lado: ${quadrado.lado}"),

            SizedBox(height: 20),

            Text("Área: ${quadrado.area().toStringAsFixed(2)}"),
            Text("Perímetro: ${quadrado.perimetro().toStringAsFixed(2)}"),

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