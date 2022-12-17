import 'classes/car.dart';
import 'classes/truck.dart';
import 'enum/colors.dart';

/**
 * Используя обобщения написать класс с методом, приводящим полученное значение в строку.
 */
void main() {
  Converter c1 = Converter();
  print(c1.convertToString(42));
  print(c1.convertToString(42.0));
  print(c1.convertToString(
      Truck(weight: 4500.0, color: Colors.red, enginePower: 500)));
}

class Converter {
  String convertToString<T>(T object) {
    if (object is Car) {
      return "Car : ${object.toString()}";
    }
    return "${object.runtimeType} ${object.toString()}";
  }
}