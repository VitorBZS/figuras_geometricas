import 'package:flutter/material.dart';
import '../../../models/retangulo_model.dart';

class RetanguloResultView extends StatelessWidget {

  final Retangulo retangulo;

  const RetanguloResultView({super.key, required this.retangulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultado Retângulo")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Base: ${retangulo.base}"),
            Text("Altura: ${retangulo.altura}"),

            SizedBox(height: 20),

            Text("Área: ${retangulo.area().toStringAsFixed(2)}"),
            Text("Perímetro: ${retangulo.perimetro().toStringAsFixed(2)}"),
            Text("Diagonal: ${retangulo.diagonal().toStringAsFixed(2)}"),

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