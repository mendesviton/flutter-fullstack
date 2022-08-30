import '../entities/user_entity.dart';

abstract class GetClientByEmailPasswordRepository {
  Future<UserEntity?> call(String email, String password);
}
