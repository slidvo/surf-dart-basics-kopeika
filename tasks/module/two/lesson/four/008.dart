import 'dart:math';

/**
 * Выполните задания:
Создать список var list = [1,2,3,4,5,6,7,8] 
Вывести длину этого списка.
Вывести отсортированный список list в порядке убывания, используя sort.
Вывести выделить подсписок newList  длиной в 3 элемента.
Вывести индекс элемента со значением “5” в списке list.
Удалить значения с 5 до 8 из списка list при помощи removeWhere и вывести в консоль.
Заменить массив значениями [1,2,3] в списке list на [10, 20, 30] и вывести в консоль.
 */

void main() {
  var list = [1, 2, 3, 4, 5, 6, 7, 8];
  print("Длина списка list : ${list.length}");
  list.sort((a, b) => a > b ? a : b);
  print(list);
  List<int> newList = list.sublist(0, 3);
  print(newList);
  print("Index of element with value 5 is ${list.indexOf(5)}");
  list.removeWhere((element) => element.clamp(5, 8) == element);
  print(list);
  list = list.map((e) => [1, 2, 3].contains(e) ? e * 10 : e).toList();
  print(list);
}
