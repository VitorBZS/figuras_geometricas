import 'dart:math';

class Circulo {
  double diametro;

  Circulo(this.diametro);

  double raio(){
    return (diametro / 2);
  }

  double area() {
    return pi * pow((diametro/2), 2) ;
  }

  double perimetro() {
    return pi * diametro;
  }
}