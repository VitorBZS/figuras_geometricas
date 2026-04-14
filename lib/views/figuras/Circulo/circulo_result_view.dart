import 'package:flutter/material.dart';
import '../../../models/circulo_model.dart';

class CirculoResultView extends StatelessWidget {

  final Circulo circulo;

  const CirculoResultView({super.key, required this.circulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultado Círculo")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Diâmetro: ${circulo.diametro}"),
            Text("Raio: ${circulo.raio().toStringAsFixed(2)}"),

            SizedBox(height: 20),

            Text("Área: ${circulo.area().toStringAsFixed(2)}"),
            Text("Perímetro: ${circulo.perimetro().toStringAsFixed(2)}"),

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