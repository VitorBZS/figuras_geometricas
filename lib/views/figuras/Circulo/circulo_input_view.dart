import 'package:flutter/material.dart';
import '../../../controllers/circulo_controller.dart';
import 'circulo_result_view.dart';

class CirculoInputView extends StatefulWidget {
  const CirculoInputView({super.key});

  @override
  _CirculoInputViewState createState() => _CirculoInputViewState();
}

class _CirculoInputViewState extends State<CirculoInputView> {

  TextEditingController diametroController = TextEditingController();

  final controller = CirculoController();

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
      var circulo = controller.calcular(diametro);
      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CirculoResultView(circulo: circulo),
      ),
    );
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Círculo - Entrada")),
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