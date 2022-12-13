import 'dart:collection';

/**
 * Выполните задания:
Создать Map телефонных номеров с именем numberBook  и типом данных (“имя”: “номер телефона”), заполнить данными: Иван : 2264865, Татьяна: 89523366684, Олег: 84952256575.
Вывести на экран весь телефонный справочник numberBook.
Вставить новый номер в карту: Екатерина:2359942 
Отсортировать карту в обратном порядке по ключам и вывести на экран результат.
 */

void main() {
  Map<String, int> numberBook = {
    "Иван": 2264865,
    "Татьяна": 89523366684,
    "Олег": 84952256575
  };
  print(numberBook);

  numberBook["Екатерина"] = 2359942;

//Отсортировать карту в обратном порядке по ключам и вывести на экран результат
  // numberBook = Map.fromEntries(numberBook.entries.toList()
  //   ..sort((a, b) => b.key.compareTo(a.key)));
  // print(numberBook);
  final sorted = SplayTreeMap<String, dynamic>.from(
      numberBook, (a, b) => b.compareTo(a));
  print(sorted);
}
