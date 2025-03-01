import 'package:crypto/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(
      {required super.name, required super.email, required super.password});

  factory UserModel.fromJson(Map<String, dynamic> user) {
    return UserModel(
        name: user["name"], email: user["email"], password: user["password"]);
  }
}
