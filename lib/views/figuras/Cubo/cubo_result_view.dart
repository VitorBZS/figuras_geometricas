import 'package:flutter/material.dart';
import '../../../models/cubo_model.dart';

class CuboResultView extends StatelessWidget {

  final Cubo cubo;

  const CuboResultView({super.key, required this.cubo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultado Cubo")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Arestas: ${cubo.aresta}"),

            SizedBox(height: 20),

            Text("Área Total: ${cubo.ATotal().toStringAsFixed(2)}"),
            Text("Perímetro: ${cubo.perimetro().toStringAsFixed(2)}"),

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