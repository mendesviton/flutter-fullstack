import 'package:project/domain/entities/user_entity.dart';

import 'package:dio/dio.dart';
import 'package:project/infra/model/client_model.dart';

import '../get_user_by_email_password_datasource.dart';

class GetUserByEmailPasswordLocalDatasource
    implements GetUserByEmailPasswordDatasource {
  final Dio dio;
  GetUserByEmailPasswordLocalDatasource({required this.dio}) {}

  @override
  Future<UserEntity?> call(String email, String password) async {
    final response = await dio.get('http://192.168.0.104/api/usuario');

    List<UserEntity> users = [];

    UserEntity? client;

    users = List.from(response.data.map((char) {
      return UserModel.fromMap(char);
    }));

    return users[0];
  }

  Future<UserEntity?> getClientObj(String email, String password) async {
    // ClientEntity clientModel = ClientEntity(
    //   name: clientMap['name'],
    //   email: clientMap['email'],
    //   password: clientMap['password'],
    //   cpf: clientMap['cpf'],
    //   cep: clientMap['cep'],
    //   id: 1,
    // );

    // return clientModel;
  }
}
