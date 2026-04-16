import 'package:flutter/material.dart';
import '../../../controllers/hexagono_controller.dart';
import 'hexagono_result_view.dart';

class HexagonoInputView extends StatefulWidget{
  const HexagonoInputView({super.key});

  @override
  _HexagonoInputViewState createState() => _HexagonoInputViewState();
}

class _HexagonoInputViewState extends State<HexagonoInputView> {
  
  TextEditingController ladoController = TextEditingController();

  final controller = HexagonoController();

  void calcular() {
    double? lado = double.tryParse(ladoController.text.replaceAll(",", "."),
    );
    
    if (lado == null) {
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
      var hexagono = controller.calcular(lado);
      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HexagonoResultView(hexagono: hexagono),
      ),
    );
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hexágono - Entrada")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: ladoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Lado",
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