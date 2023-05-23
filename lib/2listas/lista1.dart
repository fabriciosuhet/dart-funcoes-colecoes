// ignore_for_file: avoid_print
void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(printAcademia);

  // Expand
  // Array biDimencional
  var lista = [
    [1, 2],
    [3, 4],
  ];

  print(lista[1][1]);

  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  // Any
  print('.any');
  final listaBusca = ['Fabrício', 'Joao', 'Jose'];

  if (listaBusca.any((nome) => nome == 'Fabrício')) {
    print('Tem Fabrício');
  } else {
    print('Nao tem Fabrício');
  }

  // Every

  print('.every');
  final listaBusca2 = ['Fabrício', 'Joao', 'Jose'];
  if (listaBusca2.every((nome) => nome.contains('F'))) {
    print('Todos os nomes tem a letra F ');
  } else {
    print('Nem todos os nomes tem a letra F');
  }

  // .sort
  print('.sort');
  var listaParaOrdenacao = [99, 22, 10, 9, 0, 765, 1, 2, 3, 100, 300];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNomesOrdenacao = ['Fabrício', 'Joao', 'Andre', 'Arthur', 'Jose'];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  var listaDePacientes = [
    'Fabrício Suhet|23',
    'Thais Suhet|21',
    'Thais|18',
    'Ribeiro|5',
    'Joaquim|5',
    'Edilma|50',
  ];

  listaDePacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(listaDePacientes);

  // CompareTo
  print('.sort com CompareTo');
  var listaDePacientes2 = [
    'Fabrício Suhet|23',
    'Thais Suhet|21',
    'Thais|18',
    'Ribeiro|5',
    'Joaquim|5',
    'Edilma|50',
  ];
  listaDePacientes2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
    
  });
  print(listaDePacientes2);

  
}

void printAcademia(Object valor) {
  print(valor);
}
