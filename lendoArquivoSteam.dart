import 'dart:io';
import 'dart:convert';

void main() async {
  var arquivo = File('teste.txt');

  Stream<List<int>> inputStram = arquivo.openRead();

  var lines = utf8.decoder.bind(inputStram).transform(const LineSplitter());

  try {
    await for (final line in lines) {
      print(line);
    }
    print('file is now closed');
  } catch (e) {
    print(e);
  }
}
