void main() {
  dynamic nome; // ou var nome;
  print('Variavel Nula: ${nome}');

  nome = 'luis';
  print('Variavel String: ${nome}');

  nome = 66;
  print('Variavel Inteiro: ${nome}');

  nome = {'nome': 'Cesar'};
  print('Variavel Map(Object) : ${nome}');
}
