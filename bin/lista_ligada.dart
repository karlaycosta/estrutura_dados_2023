void main() {
  final lista = LinkedList<int>();
  lista.adicionar(10);
  lista.adicionar(20);
  print('Antes: $lista');
  final temp = lista.noEm(0);
  lista.inserirDepois(temp!, 30);
  print('Depois: $lista');
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

  Node<E> inserirDepois(Node<E> node, E valor) {
    if (fim == node) {
      adicionar(valor);
      return fim!;
    }
    node.proximo = Node(valor, proximo: node.proximo);
    return node.proximo!;
  }

  @override
  String toString() => vazio ? 'Lista vazia' : inicio.toString();
}
