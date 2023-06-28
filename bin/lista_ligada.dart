void main() {
  final lista = LinkedList<int>();
  lista.adicionar(10);
  lista.adicionar(20);
  lista.adicionar(30);
  print(lista.noEm(3)?.valor);
}

class Node<T> {
  T valor;

  Node<T>? proximo;

  Node(this.valor, {this.proximo});

  @override
  String toString() => proximo == null ? '$valor' : '$valor -> $proximo';
}

class LinkedList<E> {
  Node<E>? inicio;
  Node<E>? fim;
  
  bool get vazio => inicio == null;

  void empurrar(E valor) {
    inicio = Node(valor, proximo: inicio);
    fim ??= inicio;
  }

  void adicionar(E valor) {
    if (vazio) {
      empurrar(valor);
      return;
    }
    fim!.proximo = Node(valor);
    fim = fim!.proximo;
  }

  Node<E>? noEm(int indice) {
    var atual = inicio;
    var contador = 0;
    while (atual != null && contador < indice) {
      atual = atual.proximo;
      contador++;
    }
    return atual;
  }

  @override
  String toString() => vazio ? 'Lista vazia' : inicio.toString();
}
