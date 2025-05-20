import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/core/di/di_setup.dart';
import 'package:flutter_recipe_app/presentation/saved_recipes/saved_recipes_view_model.dart';
import 'package:flutter_recipe_app/presentation/saved_recipes/screen/saved_recipes_screen.dart';

class SavedRecipesRoot extends StatelessWidget {
  const SavedRecipesRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<SavedRecipesViewModel>();
    return ListenableBuilder(
      listenable: viewModel,
      builder: (BuildContext context, Widget? child) {
        final state = viewModel.state;
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return SavedRecipesScreen(recipes: state.recipes);
      },
    );
  }
}
