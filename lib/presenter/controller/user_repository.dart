import 'package:dio/dio.dart';
import 'package:project/presenter/controller/user_model.dart';

class UserRepository {
  final Dio dio = Dio();

  Future<List<UserModel>> getAllUsers() async {
      trocar o ip para a maquina da proway
    final response = await dio.get('http://192.168.1.18:80/api/User');

    List<UserModel> users = [];

    UserModel? client;

    print(response.data);
    users = List.from(response.data.map((char) {
      return UserModel.fromMap(char);
    }));

    return users;
  }

  Future<String> addUser(UserModel user) async {
    var data = {
      "name": user.name,
      "email": user.email,
      "password": user.password,
      "id": 0
    };
    final response = await dio.post(
      'http://192.168.1.18:80/api/User',
      data: data,
    );

    return response.data;
  }
}
