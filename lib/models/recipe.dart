class Recipe {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final String videoUrl;

  Recipe({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.videoUrl,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      description: json['description'],
      videoUrl: json['videoUrl'],
    );
  }
}