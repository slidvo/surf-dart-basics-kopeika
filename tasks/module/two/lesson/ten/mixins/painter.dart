import '../enum/colors.dart';

mixin Painter {
  String colorName = "white";

  setColor(Colors color) {
    colorName = color.name;
  }
}