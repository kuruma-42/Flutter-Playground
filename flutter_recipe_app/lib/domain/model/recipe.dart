import 'package:flutter_recipe_app/domain/model/recipe_ingredient.dart';

class Recipe {
  final int id;
  final String category;
  final String name;
  final String image;
  final String chef;
  final String time;
  final double rating;
  final List<RecipeIngredient> ingredients;

  Recipe({
    required this.id,
    required this.category,
    required this.name,
    required this.image,
    required this.chef,
    required this.time,
    required this.rating,
    required this.ingredients,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      category: json['category'],
      name: json['name'],
      image: json['image'],
      chef: json['chef'],
      time: json['time'],
      rating: (json['rating'] as num).toDouble(),
      ingredients:
          (json['ingredients'] as List)
              .map((e) => RecipeIngredient.fromJson(e))
              .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'category': category,
    'name': name,
    'image': image,
    'chef': chef,
    'time': time,
    'rating': rating,
    'ingredients': ingredients.map((e) => e.toJson()).toList(),
  };

  @override
  String toString() {
    return 'Recipe(id: $id, category: $category, name: $name, chef: $chef, time: $time, rating: $rating, ingredients: $ingredients)';
  }
}
