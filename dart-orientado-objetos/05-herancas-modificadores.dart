// class Pessoa {
//   String nome, sobrenome;
//   int idade;

//   Pessoa(this.nome, this.sobrenome, this.idade);

//   String NomeSobrenome() {
//     return this.nome + ' ' + this.sobrenome;
//   }
// }

// class Funcionario extends Pessoa {
//   //final double salario;
//   double salario;
//   Funcionario(String nome, String sobrenome, int idade, this.salario)
//       : super(nome, sobrenome, idade);

//   void ReceberAumento(double valor) {
//     this.salario += valor;
//   }
// }

// void main() {
//   var pessoa = new Pessoa("Cesar", "Oliveira", 21);
//   print('${pessoa.nome} ${pessoa.sobrenome} tem ${pessoa.idade} anos.');

//   var funcionario = new Funcionario('Pedro', 'Mathias', 44, 1389.99);
//   funcionario.ReceberAumento(235.16);
//   print(funcionario.NomeSobrenome() +
//       'recebeu um aumento salarial de ${funcionario.salario} reais');
// }

class FuncionarioFinal {
  final double salario;
  FuncionarioFinal(this.salario);
}

class FuncionarioStatic {
  static double salario;

  static void ReceberAumento(double valor) {
    salario += valor;
  }
}

class FuncionarioStaticConst {
  static const double salario = 3000.99;
  static void Imprimir() {}
}

void main() {
  var funcionarioFinal = new FuncionarioFinal(1290.88);
  print('Modificador Final: ${funcionarioFinal.salario}');

  FuncionarioStatic.salario = 23380.88;
  print('Modificador Static: Salário Antes: ${FuncionarioStatic.salario}');

  FuncionarioStatic.ReceberAumento(999.11);
  print('Modificador Static: Salário Atual ${FuncionarioStatic.salario}');

  print('Modificador Static Const: Salário ${FuncionarioStaticConst.salario}');
}
