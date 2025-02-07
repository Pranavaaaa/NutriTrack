import 'package:flutter/material.dart';
import '../models/recipe.dart';

class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailPage({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(recipe.imageUrl),
            SizedBox(height: 16.0),
            Text(
              recipe.name,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(recipe.description),
            SizedBox(height: 16.0),
            if (recipe.videoUrl.isNotEmpty)
              GestureDetector(
                onTap: () {
                  // Open the video URL
                },
                child: Image.network(
                  'https://img.youtube.com/vi/${Uri.parse(recipe.videoUrl).queryParameters['v']}/0.jpg',
                ),
              ),
          ],
        ),
      ),
    );
  }
}