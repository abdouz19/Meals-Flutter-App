import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/category_model.dart';
import 'package:meals/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void onSelectCategory(BuildContext context, CategoryModel category) {
    final selectedMeals =
        dummyMeals.where((element) => element.id.contains(category.id)).toList();
    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text('Your Categories'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: [
            for (final category in availableCategories)
              CategoryItem(category: category)
          ],
        ),
      ),
    );
  }
}
