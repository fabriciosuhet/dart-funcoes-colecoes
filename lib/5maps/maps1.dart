// ignore_for_file: avoid_print
void main() {
  // Mapa é uma representaçao de chave e valor
  final paciente = <String, String>{
    'nome': 'Fabrício Suhet',
    'curso': 'Academia do Flutter'
  };
  // O mapa pode ser nulo, mas se for criado deve conter a chave
  // e o valor nao nulos
  Map<String, String>? pacienteNullSafety = null;

  // O mapa e o valor nao podem ser nulo, mas a chave pode ser nula
  var pacienteNullSafety2 = <String?, String>{null: 'Fabrício'};

  // O mapa e a chave nao podem ser nulo mas o valor pode ser nulo
  var pacienteNullSafety3 = <String, String?>{'nome': null};

  var produtos = <String, String>{};
  // Só sera adiciona se a chave nao existir
  produtos.putIfAbsent('produto', () => 'Cerveja');
  produtos.putIfAbsent('produto', () => 'Refrigerante');
  print(produtos);

  produtos.update('produto', (value) => 'Refrigerante');
  print(produtos);
  produtos.update('preco', (value) => '10', ifAbsent: () => '10');

  // Recuperando o valor
  print('Produto ${produtos['produto']}');
  print('Preço ${produtos['preco']}');

  produtos.forEach((key, value) {
    print('Chave: $key: $value');
  });

  // Fazer algum processo asyncrono dentro dele.
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key}: ${entry.value}');
  }

  for (var key in produtos.keys) {
    print('Chave: $key');
  }

  for (var value in produtos.values) {
    print('Valores: $value');
  }

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key, value.toUpperCase());
  });
  print(novoMapaProdutos);

  var mapa = <String, Object>{
    'nome': 'Fabrício Suhet',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de flutter do brasil'
      },
      {
        'nome': 'Arquiteto Flutter',
        'descricao': 'Melhor curso de arquiteto flutter do brasil'
      },
    ]
  };

  print(mapa['nome']);

  var nome = mapa['nome'];
  var cursos = mapa['cursos'];
  if (cursos is List) {
    for (var curso in cursos) {
      var nomeCurso = curso['nome'];
      var descricaoCurso = curso['descricao'];

      print('Nome do Curso: $nomeCurso');
      print('Descrição do Curso: $descricaoCurso');
    }
  }
  

  // print('Nome: $nome');
  // print('Cursos: $cursos');

  
  
}
