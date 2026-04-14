import 'dart:math';

class Hexagono{
  double lado;

  Hexagono(this.lado);

  double area(){
    return 3 * sqrt(3) * pow(lado, 2)/ 2;
  }

  double perimetro(){
    return 6 * lado;
  }
}