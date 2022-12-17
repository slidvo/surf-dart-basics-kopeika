import 'dart:math';
import 'package:collection/collection.dart';

// /**
//  * Модернизируйте предыдущие функции так, чтобы на вход они принимали
//  * необходимые данные для работы. Параметр должен быть опциональным.
//  */


void main() {
  print("Среднее арифметическое: ${averageSum(numbers: generateArrayOfNumbers()).toStringAsFixed(2)}");
  print("Обратный порядок слов ${reverseTextOrder()}");
  print("Обратный порядок слов ${reverseTextOrder(text: "hello world")}");
  print("Среднее арифметическое: ${averageSum().toStringAsFixed(2)}");
}
/**
 * опциональный параметр
 */
double averageSum({List<int> numbers = const [0]}) {
  var average = numbers.average;
  print("averageSum: $average");
  return average.ceilToDouble();
}

List<int> generateArrayOfNumbers() {
  int arraySize = Random().nextInt(1000);
  var arrayOfNumbers = <int>[];
  print("Размер массива: $arraySize");

  for (int i = 0; i < arraySize; i++) {
    arrayOfNumbers.add(Random().nextInt(100));
  }

  print("Сгенерирован массив чисел:\n $arrayOfNumbers");

  return arrayOfNumbers;
}

// /**
//  * опциональный параметр
//  */
String reverseTextOrder({String text = "q qw qwe qwer qwert qwerty"}){
  var splitText = text.split(" ");
  splitText.sort((a, b) => b.compareTo(a));
  return splitText.reduce((value, element) => "$value $element");
}