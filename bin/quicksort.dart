import 'lomuto.dart';

List<int> quickSort(List<int> lista) {
  if (lista.length < 2) {
    return lista;
  }
  final esquerda = <int>[];
  final direita = <int>[];
  final pivo = lista[0];
  for (var i = 1; i < lista.length; i++) {
    lista[i] < pivo ? esquerda.add(lista[i]) : direita.add(lista[i]);
    // if (lista[i] < pivo) {
    //   esquerda.add(lista[i]);
    // } else {
    //   direita.add(lista[i]);
    // }
  }
  return [...(esquerda.length > 1 ? quickSort(esquerda) : esquerda), pivo, ...quickSort(direita)];
}

void quickSortLomuto(List lista, int primeiro, int ultimo) {
  final indicePivo = partcaoLomuto(lista, primeiro, ultimo);
  quickSortLomuto(lista, primeiro, indicePivo - 1);
  quickSortLomuto(lista, indicePivo + 1, ultimo);
}