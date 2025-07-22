import 'package:mvc_example_project/model/user_model.dart';

class UserController {
  UserController(this.user);
  final UserModel user;
  UserModel login(String name, String password) {
    return user.login();
  }
}
