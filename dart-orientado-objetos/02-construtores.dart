class Retangulo {
  num largura, altura;

  Retangulo(this.largura, this.altura);

  //Construtor Nomeado
  Retangulo.quadrado(num dimensao) {
    this.largura = dimensao;
    this.altura = dimensao;
  }

  //Redirecionamento de construtor
  Retangulo.quadrado2(num dimensao) : this(dimensao, dimensao);

  num area() {
    return this.largura * this.altura;
  }
}

void main() {
  var retangulo = new Retangulo(2, 3);
  print('O cálculo do retangulo é: ${retangulo.area()}');

  var quadrado = new Retangulo.quadrado(3);
  print('O cálculo do quadrado é: ${quadrado.area()}');

  var quadrado2 = new Retangulo.quadrado2(5);
  print('Redirecionamento=> O cálculo do quadrado: ${quadrado2.area()}');
}
