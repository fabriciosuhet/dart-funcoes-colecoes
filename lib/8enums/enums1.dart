// ignore_for_file: avoid_print
void main () {

  // const cor = 'vermelho';
  var cor = Cores.vermelho;

  if (cor == Cores.vermelho) {
    
  }

  var azul = 'azul';

  print(Cores.azul.name);
  var corAzul215 = Cores.values.byName(azul);
  print(corAzul215);

  var coresMap = Cores.values.asMap();
  print(coresMap);

  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap);

  var corAzulPeloMap = coresNameMap[azul];
  print(corAzulPeloMap);

  // Cores.values.byName('branco');

  var corBranca = coresNameMap['branco'];
  print(corBranca);


}

enum Cores {
  azul, vermelho, laranja, preto,
}