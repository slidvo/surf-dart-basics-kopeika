//Создать строковую переменную с именем text  при помощи var, попытаться присвоить переменной a. Каков результат?
void main() {
  int a;
  var text = "Text example";
  //Error: A value of type 'String' can't be assigned to a variable of type 'int'.
  // Ошибка сопоставления типов
  a = text;
}
