import 'dart:math';

enum Naipe { COPAS, OURO, ESPADA, PAUS }

enum Valor { AS, DOIS, TRES, QUATRO, CINCO, SEIS, SETE, OITO, NOVE, DEZ, VALETE, DAMA, REI }

class Carta {
  final Naipe naipe;
  final Valor valor;

  Carta(this.naipe, this.valor);

  @override
  String toString() => '${valorToString()} de ${naipeToString()}';

  String naipeToString() {
    switch (naipe) {
      case Naipe.COPAS:
        return 'Copas';
      case Naipe.OURO:
        return 'Ouro';
      case Naipe.ESPADA:
        return 'Espadas';
      case Naipe.PAUS:
        return 'Paus';
    }
  }

  String valorToString() {
    switch (valor) {
      case Valor.AS:
        return 'Ás';
      case Valor.DOIS:
        return '2';
      case Valor.TRES:
        return '3';
      case Valor.QUATRO:
        return '4';
      case Valor.CINCO:
        return '5';
      case Valor.SEIS:
        return '6';
      case Valor.SETE:
        return '7';
      case Valor.OITO:
        return '8';
      case Valor.NOVE:
        return '9';
      case Valor.DEZ:
        return '10';
      case Valor.VALETE:
        return 'Valete';
      case Valor.DAMA:
        return 'Dama';
      case Valor.REI:
        return 'Rei';
    }
  }
}

class Baralho {
  List<Carta> cartas = [];

  Baralho() {
    for (var naipe in Naipe.values) {
      for (var valor in Valor.values) {
        cartas.add(Carta(naipe, valor));
      }
    }
  }

  void embaralhar() {
    cartas.shuffle(Random());
  }

  Carta? comprar() {
    return cartas.isNotEmpty ? cartas.removeLast() : null;
  }

  int cartasRestantes() {
    return cartas.length;
  }
}

void main() {
  Baralho baralho = Baralho();
  baralho.embaralhar();

  print('Distribuindo 5 cartas:');
  for (int i = 0; i < 5; i++) {
    Carta? carta = baralho.comprar();
    if (carta != null) {
      print(carta);
    }
  }

  print('Cartas restantes no baralho: ${baralho.cartasRestantes()}');
}
