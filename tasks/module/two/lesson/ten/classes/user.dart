// Пользователь
class User {
  String name;
  String middleName;
  String lastName;

  User({required this.name, required this.middleName, required this.lastName});

  @override
  String toString() {
    return "Имя $name\nФамилия $lastName\n";
  }
}