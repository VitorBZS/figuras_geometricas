import 'package:flutter/material.dart';
import '../../../models/triangulo_model.dart';

class TrianguloResultView extends StatelessWidget {

  final Triangulo triangulo;

  const TrianguloResultView({super.key, required this.triangulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultado Triângulo")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Base: ${triangulo.base}"),
            Text("Altura: ${triangulo.altura}"),

            SizedBox(height: 20),

            Text("Área: ${triangulo.area()}"),
            Text("Perímetro: ${triangulo.perimetro().toStringAsFixed(2)}"),

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