class Pessoa {
  String nome, sobrenome;
  int idade;

  Pessoa(this.nome, this.sobrenome, this.idade);

  String NomeSobrenome() {
    return this.nome + ' ' + this.sobrenome;
  }
}

class Funcionario extends Pessoa {
  double salario;
  Funcionario(String nome, String sobrenome, int idade, this.salario)
      : super(nome, sobrenome, idade);

  void ReceberAumento(double valor) {
    this.salario += valor;
  }
}

void main() {
  var pessoa = new Pessoa("Cesar", "Oliveira", 21);
  print('${pessoa.nome} ${pessoa.sobrenome} tem ${pessoa.idade} anos.');

  var funcionario = new Funcionario('Pedro', 'Mathias', 44, 1389.99);
  funcionario.ReceberAumento(235.16);
  print(funcionario.NomeSobrenome() +
      'recebeu um aumento salarial de ${funcionario.salario} reais');
}
