import '../enum/colors.dart';
import '../mixins/painter.dart';

// Велосипед
class Bike with Painter {
  Bike({required Colors color}) {
    colorName = color.name;
  }

  @override
  String toString() {
    return 'Цвет байка $colorName';
  }
}
