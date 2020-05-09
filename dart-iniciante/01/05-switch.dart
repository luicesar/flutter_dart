void main() {
  String acao = 'PENDENTE';

  switch (acao) {
    case 'ABRIR':
      print('eu abro');
      break;
    case 'FECHAR':
      print('eu fecho');
      break;
    case 'PENDENTE':
      print('em andamento');
      break;
    case 'FINALIZADO':
      print('terminamos');
      break;
    default:
      print('ação desconhecida');
  }
}
