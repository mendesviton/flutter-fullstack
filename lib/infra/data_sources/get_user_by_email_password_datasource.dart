import 'package:project/domain/entities/user_entity.dart';

abstract class GetUserByEmailPasswordDatasource {
  Future<UserEntity?> call(String email, String password);
}
