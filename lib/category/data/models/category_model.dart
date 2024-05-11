import 'package:flutter/material.dart';

import '../../../shared/app_theme.dart';

// class CategoryModel {
//   final String id;
//   final String title;
//   final String imageName;
//   final Color color;
//
//   CategoryModel({
//     required this.id,
//     required this.title,
//     required this.imageName,
//     required this.color,
//   });
//
//   static List<CategoryModel> categories = [
//     CategoryModel(
//       id: 'business',
//       title: 'Business',
//       imageName: 'bussines',
//       color: const Color(0xFFCF7E48),
//     ),
//     CategoryModel(
//       id: 'entertainment',
//       title: 'Entertainment',
//       imageName: 'environment',
//       color: const Color(0xFF4882CF),
//     ),
//     CategoryModel(
//       id: 'sports',
//       title: 'Sports',
//       imageName: 'ball',
//       color: const Color(0xFFC91C22),
//     ),
//     CategoryModel(
//       id: 'science',
//       title: 'Science',
//       imageName: 'science',
//       color: const Color(0xFFF2D352),
//     ),
//     CategoryModel(
//       id: 'sports',
//       title: 'Sports',
//       imageName: 'ball',
//       color: const Color(0xFFC91C22),
//     ),
//     CategoryModel(
//       id: 'science',
//       title: 'Science',
//       imageName: 'science',
//       color: const Color(0xFFF2D352),
//     ),
//   ];
// }
class CategoryModel{
  final String id;
  final String title;
  final String imageName;
  final Color color;

  CategoryModel({
    required this.id,
    required this.title,
    required this.imageName,
    required this.color,

  });

  static List<CategoryModel> categories=[
    CategoryModel(
      id: 'sports',
      title: 'Sports',
      imageName: 'sports',
      color: AppTheme.redColor,
    ),
    CategoryModel(
      id: 'general',
      title: 'General',
      imageName: 'general',
      color: AppTheme.lightBlueColor,
    ),
    CategoryModel(
      id: 'health',
      title: 'Health',
      imageName: 'health',
      color: AppTheme.roseColor,
    ),
    CategoryModel(
      id: 'business',
      title: 'Business',
      imageName: 'bussines',
      color: AppTheme.orangeColor,
    ),
    CategoryModel(
      id: 'technology',
      title: 'Technology',
      imageName: 'environment',
      color: AppTheme.fadedBlue,
    ),
    CategoryModel(
      id: 'science',
      title: 'Science',
      imageName: 'science',
      color: AppTheme.yellow,
    ),
  ];

}
