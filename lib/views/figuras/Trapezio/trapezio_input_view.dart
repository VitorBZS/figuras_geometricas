import 'package:flutter/material.dart';
import '../../../controllers/trapezio_controller.dart';
import 'trapezio_result_view.dart';

class TrapezioInputView extends StatefulWidget {
  const TrapezioInputView({super.key});

  @override
  _TrapezioInputViewState createState() => _TrapezioInputViewState();
}

class _TrapezioInputViewState extends State<TrapezioInputView> {

  TextEditingController baseMaiorController = TextEditingController();
  TextEditingController baseMenorController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  final controller = TrapezioController();

  void calcular() {
    double baseMaior = double.parse(baseMaiorController.text);
    double baseMenor = double.parse(baseMenorController.text);
    double altura = double.parse(alturaController.text);

    var trapezio = controller.calcular(baseMaior, baseMenor, altura);

    if(baseMaior <= baseMenor){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("A base maior precisa ser maior do que a base menor."))
      );
    }
    else{
      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TrapezioResultView(trapezio: trapezio),
      ),
    );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Trapézio - Entrada")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: baseMaiorController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Base Maior",
                border: OutlineInputBorder(), 
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: baseMenorController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Base Menor",
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