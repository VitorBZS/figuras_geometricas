class Paralelogramo {
  double base;
  double altura;

  Paralelogramo(this.base, this.altura);

  double area() {
    return base * altura;
  }

  double perimetro(){
    return (base * 2) + (altura * 2);
  }
}