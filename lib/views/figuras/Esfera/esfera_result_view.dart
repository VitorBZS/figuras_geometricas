import 'package:flutter/material.dart';
import '../../../models/esfera_model.dart';

class EsferaResultView extends StatelessWidget {

  final Esfera esfera;

  const EsferaResultView({super.key, required this.esfera});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultado Esfera")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Raio: ${esfera.raio().toStringAsFixed(2)}"),
            Text("Diâmetro: ${esfera.diametro}"),

            SizedBox(height: 20),

            Text("Área: ${esfera.area().toStringAsFixed(2)}"),
            Text("Volume: ${esfera.volume().toStringAsFixed(2)}"),
            
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