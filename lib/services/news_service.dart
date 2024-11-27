import 'package:dio/dio.dart';
import 'package:saleclub/config.dart';
import 'package:saleclub/models/news.dart';

class NewsService {
  final Dio _dio;

  NewsService() : _dio = Dio(BaseOptions(baseUrl: Config.baseUrl));

  Future<List<News>> getNews() async {
    final response = await _dio.get('/news');
    return (response.data as List)
        .map((json) => News.fromJson(json))
        .toList();
  }
}