void main() {
  dynamic cliente;

  if (cliente == null) {
    print('O valor é ${cliente}');
  }

  var nome = 'Erick';
  if (nome != 'Erik') {
    print('executou o if');
  }
  print('terminou');

  var idade = 9;
  if (idade > 18) {
    print('idade maior que 18');
  } else if (idade >= 10) {
    print('se não, idade maior ou igual a 10');
  } else {
    print('idade não permitida');
  }
}
