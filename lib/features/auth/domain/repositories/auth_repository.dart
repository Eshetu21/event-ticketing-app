import 'package:crypto/features/auth/domain/entities/user_entity.dart';

abstract interface class AuthRepository {
  Future<UserEntity> signup(String name, String email, String password);
  Future<UserEntity> login(String email, String password);
}

