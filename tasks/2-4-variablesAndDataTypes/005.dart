//Создать переменную с именем fin  при помощи final и con при помощи const,
//попытаться изменить переменные, посмотреть результат. В чем отличия final от const?
void main() {
  var a = 42;
  final fin = a;
  //  const con = fin;// ошибка, так как константе нельзя присвоить переменную, только значение
  const con = 42;

// final и const можно инициализировать только один раз
  fin = 42;
  con = 42;
}
