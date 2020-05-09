void main() {
  hello('Erik');
  hello('João', 18, 'Silva');
  hello('Manuel');
  hello('Maria');
  hello('Matheus');
  hello('...');
}

// void hello(String nome, { int idade: 0, String sobrenome: 'Figueiredo' }) {
//   print('Hello ' + nome + ' ' + sobrenome);
// }

void hello(String nome, [int idade = 0, String sobrenome]) {
  var msg = 'Hello ' + nome;
  if (sobrenome != null) {
    msg = msg + ' ' + sobrenome;
  }

  msg = msg + ', ' + idade.toString() + ' anos';
  print(msg);
}
