import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/pages/news_home_page.dart';
import 'package:newsapp/services/news_service.dart';


void main (){
  NewsService(Dio()).getNews();
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NewsHomePage.routeName,
      routes: {
      NewsHomePage.routeName : (context) => NewsHomePage(),
      },
    );
  }
}
