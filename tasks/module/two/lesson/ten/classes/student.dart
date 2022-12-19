import 'user.dart';

// Студент
class Student extends User {
  DateTime yearOfAdmission;
  int currentCourse;

  Student(
      {required super.name,
      required super.middleName,
      required super.lastName,
      required this.yearOfAdmission,
      required this.currentCourse});

  @override
  String toString() {
    return "${super.toString()}"
        "Год поступления ${yearOfAdmission.year}\n"
        "Курс $currentCourse";
  }
}
