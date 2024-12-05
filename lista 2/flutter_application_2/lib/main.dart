void main() {
  List<String> frutas = ['maçã', 'banana', 'uva', 'abacaxi', 'morango'];
  print('Lista de frutas: $frutas');

  print('Terceira fruta: ${frutas[2]}');

  frutas.add('laranja');
  print('Lista após adicionar "laranja": $frutas');
  frutas.remove('maçã');
  print('Lista após remover "maçã": $frutas');

  print('Frutas em letras maiúsculas:');
  for (int i = 0; i < frutas.length; i++) {
    print(frutas[i].toUpperCase());
  }

  print('Frutas em letras minúsculas:');
  frutas.forEach((fruta) => print(fruta.toLowerCase()));

  List<String> frutasComA = frutas.where((fruta) => fruta.startsWith('a')).toList();
  print('Frutas que começam com "a": $frutasComA');

  Map<String, double> precosFrutas = {
    'banana': 2.0,
    'uva': 3.5,
    'abacaxi': 5.0,
    'morango': 4.0,
    'laranja': 3.0
  };
  print('Mapa de preços das frutas: $precosFrutas');

  print('Frutas e seus preços:');
  precosFrutas.forEach((fruta, preco) => print('$fruta: R\$ $preco'));

  var apenasPares = (List<int> numeros) => numeros.where((n) => n % 2 == 0).toList();
  List<int> numerosTeste = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print('Números pares: ${apenasPares(numerosTeste)}');

  List<Pessoa> pessoas = [
    Pessoa(nome: 'Ana', idade: 20),
    Pessoa(nome: 'Carlos', idade: 16),
    Pessoa(nome: 'Beatriz', idade: 25),
    Pessoa(nome: 'João', idade: 15),
    Pessoa(nome: 'Mariana', idade: 19)
  ];

  print('Pessoas maiores de idade:');
  pessoas.where((pessoa) => pessoa.idade >= 18).forEach((pessoa) => print(pessoa.nome));
}

class Pessoa {
  final String nome;
  final int idade;

  Pessoa({required this.nome, required this.idade});
}

