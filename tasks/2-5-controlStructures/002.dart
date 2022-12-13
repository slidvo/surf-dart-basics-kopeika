/**
 * Используя циклы, напишите программу, которая выводит на консоль все четные числа от 0 до 100.
 */
main() {
  Set<int> setNumbers = {};
  for (int i = 0; i <= 100; i++) {
    if (i.isEven) {
      setNumbers.add(i);
    }
  }
  print(setNumbers);
}
