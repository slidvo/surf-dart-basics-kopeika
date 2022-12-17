import '../classes/car.dart';

mixin Engine on Car {
  int enginePower = 70;

  runEngine() {
    print("Двигатель работает");
  }

  setPower(int power) {
    enginePower = power;
    maxSpeed = Car.calculateMaxSpeed(enginePower, weight);
  }

  @override
  String toString() {
    return "Мощность двигателя: $enginePower\n"
        "Вес авто $weight\n"
        "Максимальная скорость $maxSpeed\n";
  }
}