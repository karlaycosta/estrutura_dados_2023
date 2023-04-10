import 'dart:math';

import 'bublesort.dart';
import 'quicksort.dart';
void main() {
  final tamanho = 100000;
  final random = Random();
  final lista = List.generate(tamanho, (index) => random.nextInt(tamanho));
  // final lista = [3, 5, 2, 4, 1, 3];
  final temp = Stopwatch()..start();
  quickSort(lista);
  temp.stop();
  final temp1 = temp.elapsed;
  temp.reset();
  temp.start();
  bubleSort(lista);
  temp.stop();
  final temp2 = temp.elapsed;
  print('QuickSort: $temp1\nBubleSort: $temp2}');
}
