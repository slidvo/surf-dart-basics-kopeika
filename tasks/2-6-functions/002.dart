import 'package:collection/collection.dart';
import 'dart:math';

/**
 * Создайте и проинициализируйте массив чисел с произвольным размером.
 * Напишите функцию, которая вычисляет среднее арифметическое число массива и
 * возвращает double результат. Распечатайте результат в консоли.
 */
void main() {
  print(
      "Среднее арифметическое: ${
          averageSum(numbers: generateArrayOfNumbers()).toStringAsFixed(2)
      }");
}

double averageSum({required List<int> numbers}) {
  var average = numbers.average;
  print("averageSum: $average");
  return average.ceilToDouble();
}

List<int> generateArrayOfNumbers() {
  int arraySize = Random().nextInt(10000);
  var arrayOfNumbers = <int>[];
  print("Размер массива: $arraySize");

  for (int i = 0; i < arraySize; i++) {
    arrayOfNumbers.add(Random().nextInt(10000));
  }

  print("Сгенерирован массив чисел:\n $arrayOfNumbers");

  return arrayOfNumbers;
}
