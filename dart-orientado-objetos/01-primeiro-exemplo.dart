class Pessoa {
  String nome, sobrenome;
  int idade;

  //Primeira forma de se criar um construtor
  // Pessoa(nome, sobrenome, idade) {
  //   this.nome = nome;
  //   this.sobrenome = sobrenome;
  //   this.idade = idade;
  // }

  //Segunda forma de se criar um construtor é melhor
  Pessoa(this.nome, this.sobrenome, this.idade);

  String NomeSobrenome() {
    return this.nome + ' ' + this.sobrenome;
  }
}

void main() {
  var pessoa = new Pessoa("Cesar", "Oliveira", 21);
  print('${pessoa.nome} ${pessoa.sobrenome} tem ${pessoa.idade} anos.');
  print(pessoa.NomeSobrenome());
}
