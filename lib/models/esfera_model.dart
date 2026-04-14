import 'dart:math';

class Esfera {
  double diametro;

  Esfera(this.diametro);

  double raio(){
    return diametro / 2;
  }

  double area(){
    return 4 * pi * pow(raio(), 2);
  }

  double volume() {
    return (4/3) * pi * pow(raio(), 3);
  }
}