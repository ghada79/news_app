import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsService {
  final dio = Dio();

  NewsService(Dio dio);

  getNews() async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=41bd20a3903f4af7b134153dcd56c209');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articleList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description']);
      articleList.add(articleModel);
    }
    return articleList;
  }
}
