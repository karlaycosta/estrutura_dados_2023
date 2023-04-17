# Quicksort
O **_quicksort_** é outro algoritmo de classificação baseado em comparação. Assim como o **_mergesort_**, ele usa a mesma estratégia de **dividir para conquistar**. No quicksort a escolha de um **pivô** é a parte mais importante. O pivô divide a lista em três partições: valores menores que o pivô, valores iguais ao pivô e valores maiores que o pivô. No exemplo abaixo, o pivô é **8**, enquanto a partição à esquerda tem valores menores que **8** e a partição à direita tem valores maiores que **8**:
![](/doc/images/imagem_1.svg)
O *quicksort* continua dividindo recursivamente cada partição até que haja apenas um **único** elemento em cada uma delas, neste ponto, a lista estará classificada. O algoritmo *quicksort* não é estável, ou seja, dois elementos de mesmo valor podem ter classificações finais diferentes dependendo de suas posições iniciais. Por exemplo, se você estiver classificando apenas por valor numérico em um baralho, um nove de paus pode vir antes de um nove de copas dependendo se suas posições, mas depois em outra.

Nesta aula, você implementará o quicksort e examinará várias estratégias de particionamento para obter o máximo desse algoritmo de classificação.
## Implementação ingênua
Abra o projeto inicial. Na raiz do projeto, crie uma pasta chamada lib. Em seguida, crie um novo arquivo chamado quicksort.dart. Por fim, adicione o seguinte código ao arquivo:
```dart
List<E> quicksortNative<E extends Comparable<dynamic>>(List<E> list) {
    if (list.length < 2) {
        return list;
    }
    final pivot = list[0];
    final less = list.where((element) => element.compareTo(pivot) < 0);
    final equal = list.where((element) => element.compareTo(pivot) == 0);
    final greater = list.where((element) => element.compareTo(pivot) > 0);
    return [
        ...quicksortNative(less.toList()),
        ...equal,
        ...quicksortNative(greater.toList())
    ];
}
```
