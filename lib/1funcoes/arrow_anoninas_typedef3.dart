// ignore_for_file: avoid_print

void main() {
  // FUNCOES ARROW - OK
  // FUNCOES ANONIMAS - OK
  // TYPEDEF - OK

  var nome = '';
  var idade = 1;
  var funcaoQualquer = (){
    print('Chamou a funcao da variavel');
    return '2000';
  };

  print(funcaoQualquer());

 

  () {
    print('funcao anonima');
  }();

  // Nao está invocandoa a funcao
  somaInteiros;

  print(somaInteiros(10, 10));

  print('Iniciando chamada');
  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print('Nome veio vazio');
    } else {
      print(nome);
    }
  });
  print('Finalizando chamada');

}

// 3 partes
//  1 tipo de retorno
//  2 nome
//  3 parametros(normais, nomeados e opcionais)

int somaInteiros(int numero1, int numero2) => numero1 + numero2;
void somaInteirosVoid(int numero1, int numero2) => numero1 + numero2;

void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  print('Finalizandoa a funcao chamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueRecebeONome');
  var nomeCompleto = 'Fabrício Suhet';
  funcaoQueRecebeONome(nomeCompleto);
}

void chamarUmaFuncaoDeUmParametro2(FuncaoQueRecebeNome funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  print('Finalizandoa a funcao chamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueRecebeONome');
  var nomeCompleto = 'Fabrício Suhet';
  funcaoQueRecebeONome(nomeCompleto);
}
void chamarUmaFuncaoDeUmParametro3(FuncaoQueRecebeNome funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  print('Finalizandoa a funcao chamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueRecebeONome');
  var nomeCompleto = 'Fabrício Suhet';
  funcaoQueRecebeONome(nomeCompleto);
}

typedef FuncaoQueRecebeNome = void Function(String nome);
