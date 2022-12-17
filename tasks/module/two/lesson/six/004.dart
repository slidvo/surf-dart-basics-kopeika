import 'dart:math';

// /**
//  * Напишите функцию решения квадратного уравнения, используя вложенные функции.
//  * Вычисление дискриминанта, нахождение x1 и x2 выполните во вложенных функциях.
//  * Главная функция должна возвращать готовый результат.
//  * Функция возвращает ответ в строке (String). Есть три вида результата:
//     Уравнение не имеет решения так как его дискриминант меньше нуля;
//     Квадратное уравнение имеет единственное решение;
//     Квадратное уравнение имеет два разных корня.
//  */

void main() {
  solveQuadraticEquation();
  solveQuadraticEquation(a: 1, b: 2, c: 3);
  solveQuadraticEquation(a: 4, b: 42, c: 2);
}

/**
 * Возвращает -1 если дискриминат < 0
 * Возвращает 1 если дискриминат > 0
 * Возвращает 0 tckb дискриминат == 0
 */
int calculateDiscriminant(int a, int b, int c) {
  print("calculateDisciminant $a $b $c");
  return b * b - 4 * a * c;
}

int compareWithZero(int number) {
  print("compareWithZero number = $number");
  int result = number > 0
      ? 1
      : number < 0
          ? -1
          : 0;
  print("compareWIthZero result : $result");
  return result;
}

void solveQuadraticEquation({int a = 0, int b = 0, int c = 0}) {
  final D = calculateDiscriminant(a, b, c);
  print("calculateDiscriminant result $D");
  x1() => (-b + sqrt(D)) / 2 * a;
  x2() => (-b - sqrt(D)) / 2 * a;
  switch (compareWithZero(D)) {
    case 0:
      print("D = $D - один корень : x=${-b / 2 * a}");
      break;
    case 1:
      print(" D = $D - два корня x1=${x1()} x2=${x2()}");
      break;
    default:
      print("D = $D - у квадратного уровнения нет корней");
  }
  print(
      "----------------------------------------------------------------------");
}
