import 'package:flutter/material.dart';
import 'package:saleclub/services/news_service.dart';
import 'package:saleclub/models/news.dart';

class NewsViewModel extends ChangeNotifier {
  final NewsService _newsService = NewsService();
  List<News>? _news;
  String? _errorMessage;

  List<News>? get news => _news;
  String? get errorMessage => _errorMessage;

  Future<void> fetchNews() async {
    try {
      _news = await _newsService.getNews();
      _errorMessage = null;
    } catch (e) {
      _errorMessage = 'Failed to fetch news';
    }
    notifyListeners();
  }
}