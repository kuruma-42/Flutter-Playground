import 'package:flutter_recipe_app/domain/model/recipe.dart';

abstract interface class RecipeRepository {
  Future<List<Recipe>> getRecipes();
  Future<Recipe?> getRecipe(int id);
}
