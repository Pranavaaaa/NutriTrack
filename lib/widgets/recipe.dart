import 'package:flutter/material.dart';
import '../models/recipe.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  final VoidCallback onTap;

  RecipeCard({required this.recipe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.network(recipe.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(recipe.name),
        onTap: onTap,
      ),
    );
  }
}