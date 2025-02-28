import 'package:crypto/features/auth/domain/entities/user_entity.dart';
import 'package:crypto/features/auth/domain/repositories/auth_repository.dart';

class SignupUsecase {
  final AuthRepository authRepository;

  SignupUsecase({required this.authRepository});
  Future<UserEntity> call(String name, String email, String password) {
    return authRepository.signup(name, email, password);
  }
}

