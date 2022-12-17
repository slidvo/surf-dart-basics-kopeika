import 'dart:io';

/**
 * Используя switch, напишите программу в методе main(),
 * которая выводит название месяца по номеру от 1 до 12.
 */

void main() {
  while (true) {
    try {
      print("Введите номер месяца");
      int monthNumber;
      monthNumber = int.parse(stdin.readLineSync() ?? '0');

      if (monthNumber > 12 || monthNumber < 1) {
        continue;
      }

      switch (monthNumber) {
        case 12:
          print("Декабрь");
          break;
        case 1:
          print("Январь");
          break;
        case 2:
          print("Февраль");
          break;
        case 3:
          print("Март");
          break;
        case 4:
          print("Апрель");
          break;
        case 5:
          print("Май");
          break;
        case 6:
          print("Июнь");
          break;
        case 7:
          print("Июль");
          break;
        case 8:
          print("Август");
          break;
        case 9:
          print("Сентябрь");
          break;
        case 10:
          print("Октябрь");
          break;
        case 11:
          print("Ноябрь");
          break;
      }

      print("Попробовать ещё (Y/N)?");
      String exitFlag = stdin.readLineSync() ?? "Y";
      if (exitFlag.toLowerCase() == "n") {
        print("Программа завершила работу");
        break;
      } else if (exitFlag.toLowerCase() == "y") {
        continue;
      } else {
        print("Вы ввели некорректные данные. Программа завершила работу");
        break;
      }
    } on FormatException {
      print("Неверный формат. Попробуйте снова");
      continue;
    }
  }
}
