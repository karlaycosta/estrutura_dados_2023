void bubbleSort(List<int> lista) {
  for (var i = 0; i < lista.length; i++) {
    for (var ii = 0; ii < lista.length - 1; ii++) {
      if (lista[ii] > lista[ii + 1]) {
        final tmp = lista[ii];
        lista[ii] = lista[ii + 1];
        lista[ii + 1] = tmp;
      }
    }
  } 
}