// Используете 32-битный символ Unicode u2665 выведите сообщение  в консоль: I ♥ dart

void main() {
  final String loveSymbol = String.fromCharCodes(Runes("\u2665"));
  print("I $loveSymbol dart");
}
