import 'package:flutter/material.dart';
import '../../../controllers/esfera_controller.dart';
import 'esfera_result_view.dart';

class EsferaInputView extends StatefulWidget {
  const EsferaInputView({super.key});

  @override
  _EsferaInputViewState createState() => _EsferaInputViewState();
}

class _EsferaInputViewState extends State<EsferaInputView> {

  TextEditingController diametroController = TextEditingController();

  final controller = EsferaController();

  void calcular() {
    double? diametro = double.tryParse(diametroController.text.replaceAll(",", "."),
    );
    
    if (diametro == null) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Erro"),
          content: Text("Digite um número válido."),
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
      var esfera = controller.calcular(diametro);
      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EsferaResultView(esfera: esfera),
      ),
    );
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Esfera - Entrada")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: diametroController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Diâmetro",
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