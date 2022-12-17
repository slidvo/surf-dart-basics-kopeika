// Родительский класс для автомобилей
abstract class Car {
  double weight;
  double maxSpeed = 0.0;

  void run();

  static calculateMaxSpeed(int enginePower, double weight) =>
      enginePower / weight;

  Car({required this.weight});

  @override
  String toString() {
    return "Вес $weight Максимальная скорость $maxSpeed";
  }
}
