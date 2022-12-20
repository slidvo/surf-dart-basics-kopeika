import 'dart:convert';
import 'dart:io';

/// Используя Future
/// Напишите функцию, которая считывает данные с клавиатуры. Функция должна возвращать Future.
/// Напишите код, который дожидается выполнения функции и распечатывает на консоль "Введена строка stroke_name".
/// Поэкспериментируйте с async/await и then
void main() async {
  try {
    await readDataFromKeyboard()
        .then((value) => print("Введена строка: $value"));
    String result1 = await getError();
    print("result1:$result1");
  } catch (e) {
    print(e);
  }

  try {
    String result2 = await getMessage();
    print("result2: $result2");
  } catch (e) {
    print(e);
  }
}

Future<String> readDataFromKeyboard() {
  return Future(() => stdin
      .readLineSync(encoding: Encoding.getByName("utf-8") ?? SystemEncoding())
      .toString());
}

Future<String> getError() {
  print("Попытка загрузить новые сообщения...");
  return Future.delayed(
      Duration(seconds: 3), () => throw "Ошибка выполнения запроса");
}

Future<String> getMessage() {
  print("Попытка загрузить новые сообщения...");
  return Future.delayed(
      Duration(seconds: 3),
      () => "Новое письмо от Arthur Dent\n"
          "Привет, друг! Не забудь взять полотенце!");
}
