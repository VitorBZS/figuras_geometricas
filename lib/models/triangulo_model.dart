class Triangulo {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  double area() {
    return (base * altura) / 2;
  }

  double perimetro() {
    return base + (altura * 2);
  }
}