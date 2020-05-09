void main() {
  int idade = 1;
  int idadeMaxima = 18;
  while (idade < idadeMaxima) {
    print(idade.toString() + ' é menor que dezoito');
    idade++;
  }

  do {
    print('acabou => a idade ${idade - 1} é menor que ${idadeMaxima}');
  } while (false);
}
