import '../enum/colors.dart';
import '../mixins/engine.dart';
import '../mixins/painter.dart';
import 'car.dart';

// Спортивная машина
class SportCar extends Car with Painter, Engine {
  SportCar({required weight, required Colors color, required int enginePower})
      : super(weight: weight) {
    setColor(color);
    setPower(enginePower);
  }

  @override
  void run() {
    runEngine();
  }
}
