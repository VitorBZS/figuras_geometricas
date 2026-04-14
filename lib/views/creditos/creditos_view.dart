import 'package:flutter/material.dart';

class CreditosView extends StatelessWidget {
  const CreditosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Créditos")),
      body: Center(
        child: Text(
          "Equipe Autismo Em Foco\n\nGeysa Ribeiro Toppan\nIgor Ferreira\nPedro Henrique Albuquerque\nPedro Henrique Bachiega\nPedro Henrique Scabelo\nVitor Hugo",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}