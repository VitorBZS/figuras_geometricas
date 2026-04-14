import 'dart:math';

class Trapezio {
  double baseMaior;
  double baseMenor;
  double altura;

  Trapezio(this.baseMaior, this.baseMenor, this.altura);

  double area() {
    return ((baseMaior + baseMenor) * altura) / 2;
  }

  double lado(){
    return sqrt(
      pow(altura, 2) +
      pow((baseMaior - baseMenor) / 2, 2),
    );
  }

  double perimetro(){
    return baseMaior + baseMenor + (2 * lado());
  }
}