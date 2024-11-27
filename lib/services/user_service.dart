import 'package:dio/dio.dart';
import 'package:saleclub/config.dart';
import 'package:saleclub/models/user.dart';

class UserService {
  final Dio _dio;

  UserService(String token)
      : _dio = Dio(BaseOptions(
    baseUrl: Config.baseUrl,
    headers: {'Authorization': 'Bearer $token'},
  ));

  Future<User> getUserInfo() async {
    final response = await _dio.get('/me');
    return User.fromJson(response.data);
  }

  Future<bool> getUserNotificationConfig() async {
    final response = await _dio.get('/user/config/notifications');
    return response.data['notificationsEnabled'];
  }

  Future<void> updateUserNotificationConfig(bool enabled) async {
    await _dio.put('/user/config/notifications', data: {'notificationsEnabled': enabled});
  }
}