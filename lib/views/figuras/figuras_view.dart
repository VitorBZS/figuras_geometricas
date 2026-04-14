import 'package:flutter/material.dart';
import 'Quadrado/quadrado_input_view.dart';
import 'Retangulo/retangulo_input_view.dart';
import 'Circulo/circulo_input_view.dart';
import 'Triangulo/triangulo_input_view.dart';
import 'Trapezio/trapezio_input_view.dart';
import 'Losango/losango_input_view.dart';
import 'Paralelogramo/paralelogramo_input_view.dart';
import 'Cubo/cubo_input_view.dart';
import 'Esfera/esfera_input_view.dart';
import 'Hexagono/hexagono_input_view.dart';

class MenuFigurasView extends StatelessWidget {
  const MenuFigurasView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Figuras Geométricas")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RetanguloInputView()),
                );
              },
              child: Text("Retângulo"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuadradoInputView()),
                );
              },
              child: Text("Quadrado"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CirculoInputView()),
                );
              },
              child: Text("Círculo"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrianguloInputView()),
                );
              },
              child: Text("Triângulo"),
            ),
             
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder : (context) => TrapezioInputView()),
                );
              },
              child: Text("Trapézio"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder : (context) => LosangoInputView()),
                );
              },
              child: Text("Losango"),
            ),
            
            SizedBox(height: 10),
            
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder : (context) => ParalelogramoInputView()),
                );
              },
              child: Text("Paralelogramo"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
             onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder : (context) => CuboInputView()),
                );
              },
              child: Text("Cubo"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder : (context) => EsferaInputView()),
                );
              },
              child: Text("Esfera"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder : (context) => HexagonoInputView()),
                );
              },
              child: Text("Hexágono"),
            ),
          ],
        ),
      ),
    );
  }
}