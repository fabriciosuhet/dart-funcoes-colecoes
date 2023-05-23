// ignore_for_file: avoid_print
void main () {

  final valorCalculado = somaInteiro(10, 10);
  print('A soma de dois inteiros é $valorCalculado');

}

int somaInteiro(int numero1, int numero2) {
  print('Executando a soma de inteiros ($numero1, $numero2)');
   return numero1 + numero2;
  
}