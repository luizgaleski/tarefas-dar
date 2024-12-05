bool somaMenorQueC(int a, int b, int c) => (a + b) < c;

void exercicio1() {
  int a = 5, b = 10, c = 20;
  print('A soma de A + B é menor que C? ${somaMenorQueC(a, b, c) ? 'Sim' : 'Não'}');
}

String parOuImpar(int numero) => numero % 2 == 0 ? 'Par' : 'Ímpar';

void exercicio2() {
  int numero = 7;
  print('O número $numero é ${parOuImpar(numero)}');
}

int calculaC(int a, int b) => a == b ? a + b : a * b;

void exercicio3() {
  int a = 5, b = 5;
  int c = calculaC(a, b);
  print('O resultado é $c');
}

List<int> ordenarDecrescente(int x, int y, int z) => [x, y, z]..sort((a, b) => b.compareTo(a));

void exercicio4() {
  int x = 3, y = 7, z = 5;
  print('Ordem decrescente: ${ordenarDecrescente(x, y, z)}');
}

int somaImparesMultiplosDeTres() => 
    List.generate(500, (i) => i + 1).where((n) => n % 2 != 0 && n % 3 == 0).reduce((a, b) => a + b);

void exercicio5() {
  print('Soma dos ímpares múltiplos de 3 entre 1 e 500: ${somaImparesMultiplosDeTres()}');
}

List<int> imparesEntre100e200() => 
    List.generate(101, (i) => i + 100).where((n) => n % 2 != 0).toList();

void exercicio6() {
  print('Números ímpares entre 100 e 200: ${imparesEntre100e200()}');
}

List<String> tabuada(int n) => 
    List.generate(11, (i) => '$i x $n = ${i * n}');

void exercicio7() {
  int n = 5;
  print('Tabuada do $n:\n${tabuada(n).join('\n')}');
}

String calcularFatorial(int a) {
  int resultado = 1;
  List<int> sequencia = List.generate(a, (i) => a - i);
  sequencia.forEach((n) => resultado *= n);
  return '${sequencia.join(' x ')} = $resultado';
}

void exercicio8() {
  int a = 5;
  print('Fatorial de $a: ${calcularFatorial(a)}');
}

void main() {
  print('Exercício 1:');
  exercicio1();

  print('\nExercício 2:');
  exercicio2();

  print('\nExercício 3:');
  exercicio3();

  print('\nExercício 4:');
  exercicio4();

  print('\nExercício 5:');
  exercicio5();

  print('\nExercício 6:');
  exercicio6();

  print('\nExercício 7:');
  exercicio7();

  print('\nExercício 8:');
  exercicio8();
}
