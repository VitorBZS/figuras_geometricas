import 'package:flutter/material.dart';
import '../figuras/figuras_view.dart';
import '../creditos/creditos_view.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu Inicial")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuFigurasView()),
                );
              },
              child: Text("Iniciar"),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreditosView()),
                );
              },
              child: Text("Créditos"),
            ),

          ],
        ),
      ),
    );
  }
}