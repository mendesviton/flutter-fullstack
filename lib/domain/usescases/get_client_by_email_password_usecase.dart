import '../entities/user_entity.dart';
import '../repositories/get_client_by_email_password_repository.dart';

//use case contract
abstract class GetClientByEmailPasswordUseCase {
  Future<UserEntity?> call(String email, String password);
}

class GetClientByEmailPasswordUsecaseImp
    implements GetClientByEmailPasswordUseCase {
  final GetClientByEmailPasswordRepository _repository;
  GetClientByEmailPasswordUsecaseImp(this._repository);

  @override
  Future<UserEntity?> call(String email, String password) async {
    return await _repository.call(email, password);
  }
}
