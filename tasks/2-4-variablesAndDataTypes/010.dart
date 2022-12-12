import 'dart:math';

/**
 * Set
Создать Set строк с именем mySet и данными {‘Москва’, ‘Вашингтон’, ‘Париж’}
Добавить в mySet  еще одно значение ‘Вашингтон’. Вывести длину списка(комментарием написать почему длина именно такая)
Вывести на экран количество уникальных слов в тексте c учетом регистра(She == she)
“She sells sea shells on the sea shore

The shells that she sells are sea shells I am sure.

So if she sells sea shells on the sea shore

I am sure that the shells are sea shore shells”
 */

void main() {
  Set mySet = {"Москва", "Вашингтон", "Париж"};

  mySet.add("Вашингтон");
  print("mySet length is ${mySet.length}");
  //mySet length is 3
  //Длина 3 потому что Set хранит только уникальные значения, а Вашингтон изначально присутствовал в mySet перед добавлением
  String text = '''She sells sea shells on the sea shore

The shells that she sells are sea shells I am sure.

So if she sells sea shells on the sea shore

I am sure that the shells are sea shore shells
''';

  var words = text
      .replaceAll(".", "")
      .replaceAll(RegExp('r(\n)'), ' ')
      .toLowerCase()
      .split(" ");
  // print(words);
  int uniqueWordsCount = Set.from(words).length;
  print(uniqueWordsCount);
}
