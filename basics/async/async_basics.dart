
void main() {
  AsyncAwaitExample asyncAwaitExample = AsyncAwaitExample();
  asyncAwaitExample.doWork();
}

class AsyncAwaitExample {
  Future<String> getMessage() {
    return Future.delayed(Duration(seconds: 3), () => "Hello Dart Asyn\\Await");
  }

  Future<String> getError() {
    return Future.delayed(
        Duration(seconds: 3), () => throw "Сервер не отвечает!");
  }

  Future<void> doWork() async {
    print("Начало функции doWork()");
    getMessage().then((value) => print("Получено сообщение №2 $value"));
    String message = await getMessage();
    try {
      String message = await getError();
    } catch (e) {
      print("Получена ошибка $e");
    }
    print("Получено сообщение $message");
    print("Завершение функции doWork()");
  }
}
