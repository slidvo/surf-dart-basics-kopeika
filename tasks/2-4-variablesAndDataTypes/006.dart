//Создать числовую переменную с именем a проверить является ли число четным.
void main() {
  const int a = 42;
  final message = "number $a is even : ";
  print("$message${a.isEven}");
  print("$message${(a - 5).isEven}");
}
