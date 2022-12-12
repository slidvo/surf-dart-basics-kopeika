//Создать числовую переменную с именем a проверить является ли число четным.
void main(){
  const int a = 42;
  print(isEven(a));
  print(isEven(a-5));
}

/**
 * Метод проверяет является ли число a четным
 */
String isEven(int a) {
  final message = "Number $a is ";
  const EVEN = "even";
  const ODD = "odd";
  return a % 2 == 0 ? "$message$EVEN" : "$message$ODD";
}