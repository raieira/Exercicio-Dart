class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });

  final String name;
  final String cuisine;
  final List<double> ratings;

  // Getter para saber quantas avaliações tem
  int get totalAvaliacoes {
    return ratings.length;
  }

  // Getter para calcular a média das avaliações
  double get mediaAvaliacoes {
    if (ratings.isEmpty) {
      return 0;
    }

    double soma = 0;
    for (int i = 0; i < ratings.length; i++) {
      soma += ratings[i];
    }

    return soma / ratings.length;
  }
}

void main() {
  Restaurant restaurante = Restaurant(
    name: 'Sabor Caseiro',
    cuisine: 'Comida Brasileira',
    ratings: [4.5, 5.0, 4.0, 3.5],
  );

  print('Restaurante: ${restaurante.name}');
  print('Tipo: ${restaurante.cuisine}');
  print('Total de avaliações: ${restaurante.totalAvaliacoes}');
  print('Média das avaliações: ${restaurante.mediaAvaliacoes}');
}
