// ignore_for_file: avoid_print

void main () {

  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(1);
  numerosLista.add(2);

  print(numerosLista);

  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(1);

  print(numerosSet);

  print('.toSet');
  // Nao retorna valores repetidos
  print(numerosLista.toSet());
  

  numerosSet.forEach(print);

  var numeros1 = {1, 2, 3, 4, 5, 6};
  var numeros2 = {1, 3, 4, 7};

  print('.diference');
  // Retorna o que nao tem entre as duas listas
  print(numeros1.difference(numeros2));

  print('.union');
  // Retorna os números estilo Set sem repetir 
  print(numeros1.union(numeros2));

  print('.intersection');
  // Retorna números que possuem nas 2 listas
  print(numeros1.intersection(numeros2));

  var nomes1 = {'Fabrício', 'Suhet', 'Thais'};
  var nomes2 = {'Fabrício', 'Ribeiro', 'Thais'};
  print(nomes1.intersection(nomes2));

  print('.lookup');
  print(numeros1.lookup(1));
  print(nomes1.lookup('Fabrício'));
}