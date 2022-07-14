void main(List<String> args) 
{
  print('iniciou o processo');
  n2();
  p2();
  print('finalizou');
}

void n2()
{
  return print('função 2');
}

void p2()
{
  Future.delayed(Duration(seconds: 2), (){
    print('Processo 2 sendo executado');
  });
}