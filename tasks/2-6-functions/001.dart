/**
 * Создайте текстовую переменную a = ‘hello world’; Напишите функцию,
 * без возвращаемого значения. Функция меняет порядок слов на обратный.
 * Например было ‘hello world’, стало ‘world hello’
 */

void main() {
  String a = "hello world";
  print(reverseTextOrder(a));
}

String reverseTextOrder(String text){
  var splitText = text.split(" ");
  splitText.sort((a, b) => b.compareTo(a));
  return splitText.reduce((value, element) => "$value $element");
}