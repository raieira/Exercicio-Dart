class Restaurant {
  const Restaurant({
    required this.name,
    required this.comida,
    required this.avaliacoes,
  });

  final String name;
  final String comida;
  final List<double> avaliacoes;

  int get totalAvaliacoes {
    return avaliacoes.length;
  }

  double get mediaAvaliacoes {
    if (avaliacoes.isEmpty) {
      return 0;
    }

    double soma = 0;
    for (int i = 0; i < avaliacoes.length; i++) {
      soma += avaliacoes[i];
    }

    return soma / avaliacoes.length;
  }
}

void main() {
  Restaurant restaurante = Restaurant(
    name: 'sabor Caseiro',
    comida: 'comida Brasileira',
    avaliacoes: [4.5, 5.0, 4.0, 3.5],
  );

  print('Restaurante: ${restaurante.name}');
  print('Tipo: ${restaurante.comida}');
  print('Total de avaliações: ${restaurante.totalAvaliacoes}');
  print('Média das avaliações: ${restaurante.mediaAvaliacoes}');
}
