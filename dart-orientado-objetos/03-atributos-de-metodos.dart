class Cumprimentar {
  void hello(String nome, [String sobreNome, int idade = 0]) {
    String msg = 'Heloo ${nome} ${sobreNome}';
    msg += " a sua idade é ${idade}";

    print(msg);
  }
}

void main() {
  var cumprimentar = new Cumprimentar();
  cumprimentar.hello('Luis', 'Oliveira', 37);
}
