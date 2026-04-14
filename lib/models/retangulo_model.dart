import 'dart:math';

class Retangulo {
  double base;
  double altura;

  Retangulo(this.base, this.altura);

  double area() {
    return base * altura;
  }

  double perimetro() {
    return 2 * (base + altura);
  }

  double diagonal() {
    return sqrt((base * base) + (altura * altura));
  }
}