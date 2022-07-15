Future<void> main() async {
  var nomes = ['Allan', 'Ranier', 'Vasconcelos'];
  print('inicio');

  // await Future.forEach<String>(nomes, (nome) async {
  //   print(await saudacao(nome));
  // });

  // for (var nome in nomes) {
  //   print(await saudacao(nome));
  // }

  var nomesFuturo = nomes.map((nome) => saudacao(nome)).toList();

  // nomes.forEach((nome) async {
  //   print(await saudacao(nome));
  // });

  var saudacaoes = await Future.wait(nomesFuturo);
  print(saudacaoes);
  print('fim');
}

Future<String> saudacao(String nome) {
  return Future.delayed(Duration(seconds: 1), () => 'Olá $nome');
}
