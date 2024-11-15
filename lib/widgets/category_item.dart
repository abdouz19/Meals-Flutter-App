import 'package:flutter/material.dart';
import 'package:meals/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      borderRadius: BorderRadius.circular(5),
      splashColor: category.color,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.9),
              category.color.withOpacity(0.6),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight, 
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding:const EdgeInsets.only(left: 10,top: 10),
          child: Text(
            category.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground
            ),
          ),
        ),
      ),
    );
  }
}
