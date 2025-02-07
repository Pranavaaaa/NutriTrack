import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/recipe.dart';

class RecipeService {
  // Sample JSON data
  static const String _sampleJson = '''
  [
    {
      "id": "1",
      "name": "Spaghetti Carbonara",
      "imageUrl": "https://example.com/spaghetti.jpg",
      "description": "A classic Italian pasta dish.",
      "videoUrl": "https://youtube.com/spaghetti"
    },
    {
      "id": "2",
      "name": "Chicken Curry",
      "imageUrl": "https://example.com/chicken_curry.jpg",
      "description": "A spicy and flavorful dish.",
      "videoUrl": "https://youtube.com/chicken_curry"
    }
  ]
  ''';

  // Fetch recipes from the API
  Future<List<Recipe>> fetchRecipes() async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));

    // Parse the sample JSON data
    final List<dynamic> jsonData = json.decode(_sampleJson);
    return jsonData.map((json) => Recipe.fromJson(json)).toList();
  }
}