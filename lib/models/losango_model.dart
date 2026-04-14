class Losango {
  double diagonalMaior;
  double diagonalMenor;

  Losango(this.diagonalMaior, this.diagonalMenor);

  double area() {
    return (diagonalMaior * diagonalMenor) / 2;
  }

  double perimetro(){
    return (diagonalMaior * 2) + (diagonalMenor * 2);
  }
}