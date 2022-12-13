import 'dart:io';

/**Написать программу, которая слушает ввод в консоли,
 * складывает вводимые пользователем числа. Если пользователь ввел stop, завершить приложение.
 * Если пользователь вводит некорректные данные - прервать текущую итерацию, начать заново.
 *
 */
void main() {
  while (true) {
    try {
      print("Введите первое число");
      String s1 = stdin.readLineSync() ?? '0';
      if (s1 == "stop") break;
      int x = int.parse(s1);
      print("Введите второе число");
      String s2 = stdin.readLineSync() ?? '0';
      if (s2 == "stop") break;
      int y = int.parse(s2);
      int result = x + y;
      print("Result: $result");
      print("Попробовать ещё раз? (Y/N): ");
      String tryAgain = (stdin.readLineSync() ?? "N").toLowerCase();
      if (tryAgain.compareTo("y") == 0) {
        continue;
      } else if (tryAgain.compareTo("n") == 0 ||
          tryAgain.compareTo("stop") == 0) {
        break;
      } else {
        throw FormatException;
      }
    } catch (e) {
      print("Введены некорректные данные. Попробуйте снова");
      continue;
    }
  }
}
