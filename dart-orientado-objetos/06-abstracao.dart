abstract class FormaGeometrica {
  num area();
}

class Retangulo extends FormaGeometrica {
  num largura, altura;
  Retangulo(this.largura, this.altura);

  @override
  num area() {
    return this.largura * this.altura;
  }
}

class Quadrado extends FormaGeometrica {
  num largura, altura;

  Quadrado(num dimensao) {
    this.largura = dimensao;
    this.altura = dimensao;
  }

  @override
  num area() {
    return this.largura * this.altura;
  }
}

class CriarPdf {
  static String render(FormaGeometrica forma) {
    return 'A forma geométrica é ${forma.area()}';
  }
}

void main() {
  FormaGeometrica quadrado = new Quadrado(3);
  FormaGeometrica retangulo = new Retangulo(4, 6);

  print('Abastração Quadrado: ${CriarPdf.render(quadrado)} ');
  print('Abastração Retangulo: ${CriarPdf.render(retangulo)} ');
}
