
class FutureExample {
  static Future<String> getMessage() {
    return Future.delayed(
        Duration(seconds: 3), () => "Пришло новое соообщение !");
  }

  static void checkMessages() {
    print("Проверяем сообщения");
    getMessage().then((value) => print(value));
  }
}

void main() {
  FutureExample.checkMessages();
}
