import 'classes/student.dart';

// Реализуйте класс Student (Студент), который будет наследоваться от класса User. Класс должен иметь следующие свойства:
//     yearOfAdmission:DateTime (год поступления в вуз): инициализируется в конструкторе
//     currentCourse:int (текущий курс): рассчитывается след. образом - из текущего года вычесть год поступления. чтобы получить годы из DateTime, воспользуйтесь свойством DateTime.year
//     Класс должен иметь метод toString() , с помощью которого можно вывести:
//
//     имя и фамилию студента - используя родительскую реализацию toString
//     год поступления
//     текущий курс

void main() {
  Student oleg = Student(
      name: "Олег",
      middleName: "Иванович",
      lastName: "Морозенко",
      yearOfAdmission: DateTime(2022, 6, 15, 12, 0, 0, 0),
      currentCourse: 1);
  print(oleg.toString());
}
