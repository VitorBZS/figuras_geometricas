import 'dart:math';

class Cubo {
  double aresta;

  Cubo(this.aresta);

  double ATotal() {
    return (pow(aresta, 2)) * 6;
  }

  double perimetro(){
    return aresta * 12;
  }
}