import 'package:project/domain/repositories/get_client_by_email_password_repository.dart';
import 'package:project/infra/data_sources/get_user_by_email_password_datasource.dart';

import '../../domain/entities/user_entity.dart';

class GetUserByEmailPasswordRepositoryImp
    implements GetClientByEmailPasswordRepository {
  final GetUserByEmailPasswordDatasource _datasource;

  GetUserByEmailPasswordRepositoryImp(this._datasource);

  @override
  Future<UserEntity?> call(String email, String password) async {
    return await _datasource.call(email, password);
  }
}
