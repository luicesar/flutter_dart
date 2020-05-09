void main() {
  print('----------------------- funcao hello -----------------------');
  hello('um parametro');
  hello('2 parametro', cor: 'amarelo');
  hello('2 parametro', largura: '123');
  hello('3 parametro', cor: 'verde', largura: '456');

  print('----------------------- funcao chama funcao -----------------------');
  funcao1('funcao->funcao', () => {}, idade: 21, cor: 'verde');
  funcao1('funcao->funcao', () => {print('Função Anônima')},
      idade: 21, cor: 'verde');
  funcao1('funcao->funcao', funcao2, idade: 21, cor: 'verde');
}

void hello(String texto, {String cor, String largura}) {
  //Posso verificar se a variavel é nula ?? com o codigo abaixo
  print(
      'param1: ${texto} - cor: ${cor ?? 'defautl1'} - largura: ${largura ?? 'default2'}');
}

//chamar função que chama dentro da função
void funcao1(String nome, Function funcao2, {int idade, String cor}) {
  print('${nome} - idade: ${idade} - cor: ${cor ?? 'default1'}');
  funcao2();
}

void funcao2() {
  print('=> executar funcao2.');
}
