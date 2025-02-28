import 'package:crypto/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:crypto/features/auth/domain/entities/user_entity.dart';
import 'package:crypto/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImp implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImp({required this.authRemoteDataSource});
  @override
  Future<UserEntity> login(String email, String password) async {
    return await authRemoteDataSource.login(email, password);
  }

  @override
  Future<UserEntity> signup(String name, String email, String password) async {
    return authRemoteDataSource.signin(name, email, password);
  }
}

