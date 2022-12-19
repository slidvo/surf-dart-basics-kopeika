import 'dart:convert';
import 'dart:io';

/// Используя Stream
/// Напишите функцию, которая считывает данные с клавиатуры до тех пор,
/// пока не будет введен строка "exit". Функция должна возвращать Stream.
/// Напишите код, который прослушивает поток и распечатывает на консоль
/// "Введена строка stroke_name" каждый раз, когда в потоке появляется новое
/// событие.
void main() {
  readDataFromKeyboard().listen((event) { 
    print("Введена строка $event");
  });
}

Stream<String> readDataFromKeyboard() async* {
  while (true) {
    String line = stdin
        .readLineSync(encoding: Encoding.getByName("utf-8") ?? SystemEncoding())
        .toString();
    if (line == "exit") break;
    yield line;
  }
}
