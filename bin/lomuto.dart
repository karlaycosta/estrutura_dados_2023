int partcaoLomuto(List lista, int primeiro, int ultimo) {
  final pivo = lista[ultimo]; // Último valor da lista
  var indicePivo = primeiro; // Primeiro valor da lista
  for (var i = primeiro; i < ultimo; i++) {
    // Testa se alor da lista é menor ou igual ao
    // valor do "pivo"
    if (lista[i] <= pivo) {
      trocar(lista, i, indicePivo); // Efetua a troca
      indicePivo++; // Incrementa o índice
    }
  }
  trocar(lista, ultimo, indicePivo);
  return indicePivo;
}

/// Função que efetua a troca dos valores
/// na lista (swap)
void trocar(List lista, int a, int b) {
  if (a == b) {
    return;
  }
  final comp = lista.length - 1; // Valor do índice final da lista
  // Testa se o valor dos índice "a" e "b"
  // estão dentro dos valores válidos do índice da lista
  if (a >=0 && a <= comp && b >= 0 && b <= comp) {
    final temp = lista[b];
    lista[b] = lista[a];
    lista[a] = temp;
  }
}
