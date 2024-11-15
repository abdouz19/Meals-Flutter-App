import 'package:flutter/material.dart';
import 'package:meals/models/meals_model.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});

  final MealsModel meal;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Stack(
      children: [
        FadeInImage(placeholder: , image: NetworkImage(meal.imageUrl))
      ],
    ),
    );
  }
}
