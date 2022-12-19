import '../enum/colors.dart';
import '../mixins/engine.dart';
import '../mixins/painter.dart';
import 'car.dart';

// Грузовой автомобиль
class Truck extends Car with Engine, Painter {
  Truck({required weight, required Colors color, required int enginePower})
      : super(weight: weight) {
    setPower(enginePower);
  }

  @override
  void run() {
    runEngine();
  }

  @override
  String toString() {
    return super.toString();
  }
}
