import 'package:dio/dio.dart';
import 'package:saleclub/config.dart';

class AuthService {
  final Dio _dio;

  AuthService() : _dio = Dio(BaseOptions(baseUrl: Config.baseUrl));

  Future<String> login(String email, String password) async {
    final response = await _dio.post('/login', data: {
      'email': email,
      'password': password,
    });
    return response.data['token']; // Assuming the token is in the 'token' field
  }

  Future<void> register(String email, String password) async {
    await _dio.post('/register', data: {
      'email': email,
      'password': password,
    });
  }
}