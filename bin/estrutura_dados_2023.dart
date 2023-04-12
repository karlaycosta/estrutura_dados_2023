import 'dart:math';

import 'bublesort.dart';
import 'lomuto.dart';
import 'quicksort.dart';

void main() {
  // final tamanho = 10;
  // final random = Random();
  // final lista = List.generate(tamanho, (index) => random.nextInt(tamanho));
  // final lista = [3, 5, 2, 4, 1, 3];

  //     índice  0  1  2   3  4  5   6  7   8
  final lista = [8, 2, 10, 0, 9, 18, 9, -1, 5];
  quickSortLomuto(lista, 0, lista.length - 1);
  print(lista);
  // final temp = Stopwatch()..start();
  // print(quickSort(lista));
  // temp.stop();
  // final temp1 = temp.elapsed;
  // temp.reset();
  // temp.start();
  // // bubleSort(lista);
  // temp.stop();
  // final temp2 = temp.elapsed;
  // print('QuickSort: $temp1\nBubleSort: $temp2}');
}
