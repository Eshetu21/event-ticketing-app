import 'dart:convert';

import 'package:crypto/features/auth/data/usermodels/user_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDataSource {
  final baseUrl = "";
  Future<UserModel> login(String email, String password) async {
    final response = await http.post(Uri.parse('$baseUrl/login'),
        body: jsonEncode({"email": email, "password": password}),
        headers: {"Content-Type": "application/json"});
    return UserModel.fromJson(jsonDecode(response.body));
  }

  Future<UserModel> signin(String name, String email, String password) async {
    final response = await http.post(Uri.parse('$baseUrl/register'),
        body: jsonEncode({"name": name, "email": email, "password": password}));
    return UserModel.fromJson(jsonDecode(response.body));
  }
}

