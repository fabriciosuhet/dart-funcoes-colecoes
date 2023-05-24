// ignore_for_file: avoid_print
void main () {

  var lista = ['Fabrício'];
  print(lista.hashCode);
  print(lista);

  funcao(lista);
  print(lista);

  var nome = 'Fabrício Suhet';
  print(nome);
  print(nome.hashCode);
  funcao2(nome);
  print(nome);
  print(nome.hashCode);

}

void funcao2(String nome) {
  nome += ' o mais gostoso';
  print(nome);
  print(nome.hashCode);
}

void funcao(List<String> nomes) {
  print(nomes.hashCode);
  if (nomes.isNotEmpty) {
    nomes.clear();
  }
}