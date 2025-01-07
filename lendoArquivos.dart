import 'dart:io';

void main() async {
  var config = File('teste.txt');

  //todos os dados do arquivo irá se tornar uma única linha

  try {
    var umaLinha = await config.readAsLines();
    print(umaLinha);
  } catch (e) {
    print(e);
  }
}
