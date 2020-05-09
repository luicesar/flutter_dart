void main() {
  List listas = [1, 2, 3, 4, 5, 'Luis', true, 'Cesar', 37.1];
  print('Total: ${listas.length}');
  for (var item in listas) {
    print(item);
  }
  print('-------------------');

  Map usuario = {'nome': 'João', 'idade': 19, 'peso': 81.7};

  print('Map Objeto: ${usuario}');
  print(
      'Map: ${usuario['nome']} tem ${usuario['idade']} anos e pesa ${usuario['peso']} kg.');
}
