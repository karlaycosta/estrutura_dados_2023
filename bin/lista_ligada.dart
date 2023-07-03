void main() {
  final lista = LinkedList<int>();
  lista.adicionar(10);// 0
  lista.adicionar(20);// 1
  lista.adicionar(30);// 2
  lista.adicionar(40);// 3
  final temp = lista.noEm(2);
  print(lista.removeAfter(temp!));
  print('$lista');
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

  E? pop() {
    final value = inicio?.valor;
    inicio = inicio?.proximo;
    if (vazio) {
      fim = null;
    }
    return value;
  }

  E? removeLast() {
    // 1
    if (inicio?.proximo == null) {
      return pop();
    }
    // ini         fim
    // 10 -> 20 -> 30 -> 40
    //             *
    var current = inicio;
    while (current!.proximo != fim) {
      current = current.proximo;
    }
    // 3
    final value = fim?.valor;
    fim = current;
    fim?.proximo = null;
    return value;
  }
  // 10 -> 20 -> 40
  E? removeAfter(Node<E> node) {
    final value = node.proximo?.valor;
    if (node.proximo == fim) {
      fim = node;
    }
    node.proximo = node.proximo?.proximo;
    return value;
  }

  @override
  String toString() => vazio ? 'Lista vazia' : inicio.toString();
}
