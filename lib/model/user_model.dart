class UserModel {
  String name;
  int age;
  String email;
  UserModel(this.name, this.age, this.email);
  UserModel login() {
    return UserModel(name, age, email);
  }
}
