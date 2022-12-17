/**
 * Создайте текстовую переменную a = ‘hello world’; Напишите функцию,
 * без возвращаемого значения. Функция меняет порядок слов на обратный.
 * Например было ‘hello world’, стало ‘world hello’
 */

void main() {
  String a = "hello world";
  print(reverseTextOrder(a));
}

String reverseTextOrder(String text) {
  return text.split(" ").reversed.join(" ");
}
