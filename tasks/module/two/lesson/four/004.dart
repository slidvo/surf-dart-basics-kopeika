/**
 * Создать переменную  с именем dyn при помощи dynamic, 
 * проинициализировать его целочисленным значением, далее попытаться присвоить переменной строковое значение переменной text. 
 * Каков результат? Почему?
 */

void main() {
  dynamic dyn = 42;
  var text = "Text example";

  print("dyn type is : ${dyn.runtimeType}");
  // dyn type is : int

  dyn = text;

  print("dyn type is : ${dyn.runtimeType}");
  // dyn type is : String
}
