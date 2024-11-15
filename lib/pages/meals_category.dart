import 'package:flutter/material.dart';
import 'package:meals/models/meals_model.dart';

class MealsCategory extends StatelessWidget {
  const MealsCategory({super.key, required this.selectedMeals});

  final List<MealsModel> meals;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(final meal in meals)

      ],
    );
  }
}
