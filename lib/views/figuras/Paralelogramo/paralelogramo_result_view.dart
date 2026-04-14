import 'package:flutter/material.dart';
import '../../../models/paralelogramo_model.dart';

class ParalelogramoResultView extends StatelessWidget {

  final Paralelogramo paralelogramo;

  const ParalelogramoResultView({super.key, required this.paralelogramo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultado Paralelogramo")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Base: ${paralelogramo.base}"),
            Text("Altura: ${paralelogramo.altura}"),

            SizedBox(height: 20),

            Text("Área: ${paralelogramo.area().toStringAsFixed(2)}"),
            Text("Perímetro: ${paralelogramo.perimetro().toStringAsFixed(2)}"),

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