import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saleclub/view_models/news_view_model.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NewsViewModel()..fetchNews(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('News'),
        ),
        body: Consumer<NewsViewModel>(
          builder: (context, viewModel, child) {
            if (viewModel.news != null) {
              return ListView.builder(
                itemCount: viewModel.news!.length,
                itemBuilder: (context, index) {
                  final news = viewModel.news![index];
                  return ListTile(
                    title: Text(news.title),
                    subtitle: Text(news.content),
                    trailing: Text(news.date),
                  );
                },
              );
            } else if (viewModel.errorMessage != null) {
              return Center(child: Text(viewModel.errorMessage!));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}