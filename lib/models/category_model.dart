import 'package:flutter/material.dart';

class CategoryModel {
  const CategoryModel(
      {required this.title, required this.id, this.color = Colors.amber});

  final String title;
  final String id;
  final Color color;
}
