abstract class FormaGeometrica {
  num area();

  String _tipo;
  String get tipo => this._tipo;
  set tipo(String tipo) {
    this._tipo = tipo;
  }
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
    return 'A forma geométrica é ${forma.tipo} mas seu valor é ${forma.area()}';
  }
}

void main() {
  FormaGeometrica quadrado = new Quadrado(3);
  FormaGeometrica retangulo = new Retangulo(4, 6);

  quadrado.tipo = 'Quadrado';
  retangulo.tipo = 'Retangulo';

  print('${CriarPdf.render(retangulo)} ');
  print(' ${CriarPdf.render(quadrado)} ');
}
