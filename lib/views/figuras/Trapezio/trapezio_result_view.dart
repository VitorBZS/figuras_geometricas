import 'package:flutter/material.dart';
import '../../../models/trapezio_model.dart';

class TrapezioResultView extends StatelessWidget {

  final Trapezio trapezio;

  const TrapezioResultView({super.key, required this.trapezio});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultado Trapézio")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Base Maior: ${trapezio.baseMaior}"),
            Text("Base Menor: ${trapezio.baseMenor}"),
            Text("Altura: ${trapezio.altura}"),

            SizedBox(height: 20),

            Text("Área: ${trapezio.area().toStringAsFixed(2)}"),
            Text("Perímetro: ${trapezio.perimetro().toStringAsFixed(2)}"),

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