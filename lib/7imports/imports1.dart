// ignore_for_file: avoid_print
import './somas/soma1.dart' as soma;
import './somas_nova/soma1.dart' as nova_soma;


void main () {

  var totalDouble = soma.somaDouble(10.1, 10.2);
  var totalInteiros = nova_soma.somaInteiros(10, 5);
  
  print('Total de doubles: ${totalDouble.toStringAsFixed(2)}');
  print('Total de inteiros: $totalInteiros');

}