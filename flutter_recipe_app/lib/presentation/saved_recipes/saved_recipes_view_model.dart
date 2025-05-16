import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/domain/model/recipe.dart';
import 'package:flutter_recipe_app/domain/use_case/get_saved_recipes_use_case.dart';

class SavedRecipesViewModel with ChangeNotifier {
  final GetSavedRecipesUseCase _getSavedRecipesUseCase;
  List<Recipe> _recipe = [];
  List<Recipe> get recipe => List.unmodifiable(recipe);
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  SavedRecipesViewModel({
    required GetSavedRecipesUseCase getSavedRecipesUseCase,
  }) : _getSavedRecipesUseCase = getSavedRecipesUseCase {
    _loadRecipeData();
  }

  void _loadRecipeData() async {
    _isLoading = true;
    notifyListeners();
    await _getSavedRecipesUseCase
        .execute()
        .then((value) {
          _recipe = value;
          _isLoading = false;
        })
        .catchError((error) {
          _isLoading = false;
        });
    notifyListeners();
  }
}
