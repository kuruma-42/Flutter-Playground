import 'package:flutter_recipe_app/domain/model/ingredient.dart';

class RecipeIngredient {
  final Ingredient ingredient;
  final int amount;

  RecipeIngredient({required this.ingredient, required this.amount});

  factory RecipeIngredient.fromJson(Map<String, dynamic> json) {
    return RecipeIngredient(
      ingredient: Ingredient.fromJson(json['ingredient']),
      amount: json['amount'],
    );
  }

  Map<String, dynamic> toJson() => {
    'ingredient': ingredient.toJson(),
    'amount': amount,
  };

  @override
  String toString() {
    return 'IngredientAmount(ingredient: $ingredient, amount: $amount)';
  }
}
