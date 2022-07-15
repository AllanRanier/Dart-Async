Future<void> main(List<String> args) async {
  try {
    print('inicio do main');
    var mensagem1 = await processo1();
    print(mensagem1);
    var mensagem2 = await processo2();
    print(mensagem2);
    await processo3();
  } catch (e) {
    print('Erro na chamada do processo 3: $e');
  }

  print('fim do main');
}

Future<String> processo1() async {
  print('inicio p1');

  return Future.delayed(Duration(seconds: 3), () => 'Fim passo p1');
}

Future<String> processo2() async {
  print('inicio p2');

  return Future.delayed(Duration(seconds: 3), () => 'Fim passo p2');
}

Future<String> processo3() async {
  print('inicio p3');

  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}
