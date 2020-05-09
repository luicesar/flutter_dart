class InfosPessoa {
  int idade;

  InfosPessoa(this.idade);
}

void main() {
  Map<String, InfosPessoa> pessoas = new Map();
  pessoas["João"] = new InfosPessoa(30);
  pessoas["Marcelo"] = InfosPessoa(20);

  print(pessoas["João"].idade);
  print(pessoas.keys);

  pessoas.remove("João");
  print(pessoas.keys);

  Map<int, String> ddds = Map();
  ddds[11] = "São Paulo";
  ddds[19] = "Campinas";
  ddds[13] = "Não sei";

  print(ddds);

  Map<String, dynamic> pessoa = new Map();
  pessoa["nome"] = "Enzo";
  pessoa["idade"] = 10;
  pessoa["altura"] = 1.50;

  print(pessoa);
}
