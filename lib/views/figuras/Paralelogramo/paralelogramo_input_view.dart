import 'package:flutter/material.dart';
import '../../../controllers/paralelogramo_controller.dart';
import 'paralelogramo_result_view.dart';

class ParalelogramoInputView extends StatefulWidget {
  const ParalelogramoInputView({super.key});

  @override
  _ParalelogramoInputViewState createState() => _ParalelogramoInputViewState();
}

class _ParalelogramoInputViewState extends State<ParalelogramoInputView> {

  TextEditingController baseController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  final controller = ParalelogramoController();
  
  void calcular() {
    double? base = double.tryParse(baseController.text.replaceAll(",", "."),
    );
    double? altura = double.tryParse(alturaController.text.replaceAll(",", "."),
    );
    
    if (base == null || altura == null) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Erro"),
          content: Text("Digite números válidos."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        ),
      );
    return;
  }
  else
  {
      var paralelogramo = controller.calcular(base, altura);
      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ParalelogramoResultView(paralelogramo: paralelogramo),
      ),
    );
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Paralelogramo - Entrada")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: baseController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Base",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: alturaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Altura",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: calcular,
              child: Text("Calcular"),
            )

          ],
        ),
      ),
    );
  }
}