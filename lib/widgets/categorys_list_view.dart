import 'package:flutter/material.dart';
import '../models/category_model.dart';
import 'category_cards.dart';

class CategorysListView extends StatelessWidget {
  const CategorysListView({Key? key}) : super(key: key);

  final List<CategoryModel> categories = const [
    CategoryModel(
        imageAssetsUrl: 'assets/images/business.avif',
        categoryName: 'Business'),
    CategoryModel(
        imageAssetsUrl: 'assets/images/entertainment.jpg',
        categoryName: 'Entertainment'),
    CategoryModel(
        imageAssetsUrl: 'assets/images/general.avif', categoryName: 'General'),
    CategoryModel(
        imageAssetsUrl: 'assets/images/health.avif', categoryName: 'Health'),
    CategoryModel(
        imageAssetsUrl: 'assets/images/science.avif', categoryName: 'Science'),
    CategoryModel(
        imageAssetsUrl: 'assets/images/sports.avif', categoryName: 'Sports'),
    CategoryModel(
        imageAssetsUrl: 'assets/images/technology.jpeg',
        categoryName: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCards(
              category: categories[index],
            );
          }),
    );
  }
}
