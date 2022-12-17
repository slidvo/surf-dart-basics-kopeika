import 'classes/bike.dart';
import 'classes/sport_car.dart';
import 'classes/truck.dart';
import 'enum/colors.dart';

void main() {
  Truck truck1 = Truck(weight: 2500.0, color: Colors.green, enginePower: 250);
  print(truck1);
  truck1.setColor(Colors.red);
  truck1.setPower(350);
  print(truck1);
  truck1.run();
  print("==============================================================");
  SportCar flutterati =
      SportCar(weight: 2000.0, color: Colors.blue, enginePower: 800);
  print(flutterati);
  flutterati.setColor(Colors.green);
  flutterati.setPower(1000);
  print(flutterati);
  flutterati.run();
  print("==============================================================");
  Bike bike1 = Bike(color: Colors.blue);
  print(bike1);
  bike1.setColor(Colors.red);
  print(bike1);
}
