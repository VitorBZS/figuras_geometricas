import 'package:flutter/material.dart';
import '../../../models/hexagono_model.dart';

class HexagonoResultView extends StatelessWidget {
  
  final Hexagono hexagono;
  
  const HexagonoResultView({super.key, required this.hexagono});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultado Hexágono")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Lado: ${hexagono.lado}"),
            
            SizedBox(height: 20),

            Text("Área: ${hexagono.area().toStringAsFixed(2)}"),
            Text("Perímetro: ${hexagono.perimetro().toStringAsFixed(2)}"),

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