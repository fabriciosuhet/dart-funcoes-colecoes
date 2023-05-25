// ignore_for_file: avoid_print

void main() {
  var idade = '38';
  String? nome;

  try {
    int.parse(idade);
    nome!.toLowerCase();
  } on FormatException catch(e, s) {
    // print(e);
    print(s);
  } on TypeError {
    print('Erro ao converter idade');
  } catch (e) {
    print('Erro ao executar programa');
  } finally {
    print('finally');
  }

}