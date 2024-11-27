import 'package:dio/dio.dart';
import 'package:saleclub/config.dart';
import 'package:saleclub/models/notification.dart';

class NotificationService {
  final Dio _dio;

  NotificationService(String token)
      : _dio = Dio(BaseOptions(
    baseUrl: Config.baseUrl,
    headers: {'Authorization': 'Bearer $token'},
  ));

  Future<List<Notification>> getNotifications() async {
    final response = await _dio.get('/notifications');
    return (response.data as List)
        .map((json) => Notification.fromJson(json))
        .toList();
  }
}