import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/models/article_model.dart';
import 'news_tile.dart';

class NewsTileList extends StatefulWidget {
  const NewsTileList({Key? key}) : super(key: key);

  @override
  State<NewsTileList> createState() => _NewsTileListState();
}

class _NewsTileListState extends State<NewsTileList> {

  List<ArticleModel> articles = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NewsService(Dio()).getNews();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length, (context, index) {
      return  NewsTile(articleModel: articles[index],);
    }));
  }
}
