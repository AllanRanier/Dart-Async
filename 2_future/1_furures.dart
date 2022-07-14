void main(List<String> args) {
  print('inicio p1');

  processo2();
  processo3().then((mensagem) {
    print(mensagem);
  });

  processo4()
      .then((mensagem) => print('Mensagem do P4 $mensagem'))
      .catchError((erro) => print('Erro ao executar o processo 4'));

  processo4().then((mensagem) => print('Mensagem do P4 $mensagem'),
      onError: (erro) {
    print('Tratando o erro pelo o then');
  });
  print('fim p2');
}

Future<String> processo4() async {
  print('inicio p4');
  return Future.delayed(Duration(seconds: 2), () => throw Exception());
}

Future<String> processo3() async {
  print('inicio p3');

  return Future.delayed(Duration(seconds: 1), () => 'Fim passo p3');
}

Future<void> processo2() async {
  print('Inicio do p2');
  Future.delayed(Duration(seconds: 3), () {
    var i = 0;

    while (i < 4) {
      print(i);
      i++;
    }

    print('Fim do p2');
  });
}
