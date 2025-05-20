import 'package:flutter_recipe_app/data/repository/mock_bookmark_repository_impl.dart';
import 'package:flutter_recipe_app/data/repository/mock_recipe_repository_impl.dart';
import 'package:flutter_recipe_app/domain/repository/bookmark_repository.dart';
import 'package:flutter_recipe_app/domain/repository/recipe_repository.dart';
import 'package:flutter_recipe_app/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:flutter_recipe_app/presentation/saved_recipes/saved_recipes_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<RecipeRepository>(MockRecipeRepositoryImpl());
  getIt.registerSingleton<BookmarkRepository>(MockBookmarkRepositoryImpl());
  getIt.registerSingleton(
    GetSavedRecipesUseCase(
      recipeRepository: getIt(),
      bookmarkRepository: getIt(),
    ),
  );
  getIt.registerFactory<SavedRecipesViewModel>(
    () => SavedRecipesViewModel(getSavedRecipesUseCase: getIt()),
  );
}
