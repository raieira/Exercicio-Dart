void main() {
  List<int> numeros = [5, 10, 15, 20, 25];

  List<int> resultado = pegarPrimeiroEUltimo(numeros);

  print('lista original: $numeros');
  print('nova lista com o primeiro e o último: $resultado');
}

List<int> pegarPrimeiroEUltimo(List<int> lista) {
  List<int> novaLista = [];

  if (lista.isNotEmpty) {
    novaLista.add(lista.first);
    if (lista.length > 1) {
      novaLista.add(lista.last);
    }
  }

  return novaLista;
}
