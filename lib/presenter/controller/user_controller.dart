import 'package:project/presenter/controller/user_model.dart';

import 'user_repository.dart';

class UserController {
  final UserRepository userRepo = UserRepository();
  Future<UserModel?> LoginValidation(String email, String password) async {
    List<UserModel> userList = await userRepo.getAllUsers();
    UserModel? user;
    bool userExists = false;
    for (UserModel element in userList) {
      if (element.email.toUpperCase() == email.toUpperCase().trim() &&
          element.password.toUpperCase() == password.toUpperCase().trim()) {
        user = element;
      }
    }
    return user;
  }
}
