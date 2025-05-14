import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/core/presentation/components/big_button.dart';
import 'package:flutter_recipe_app/core/presentation/components/medium_button.dart';
import 'package:flutter_recipe_app/ui/color_styles.dart';
import 'package:flutter_recipe_app/ui/text_styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox.expand(
            child: Image.asset(
              'assets/image/splash_image.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            child: Column(
              children: [
                const SizedBox(height: 104),
                Image.asset('assets/image/crown.png', width: 79, height: 79),
                const SizedBox(height: 14),
                Text(
                  '100K+ Premium Recipes',
                  style: TextStyles.largeTextBold.copyWith(
                    color: ColorStyles.white,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 250,
                  child: Text(
                    'Get Cooking',
                    style: TextStyles.titleTextBold.copyWith(
                      color: ColorStyles.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Simple way to find Tasty Recipe',
                  style: TextStyles.mediumTextRegular.copyWith(
                    color: ColorStyles.white,
                  ),
                ),
                const SizedBox(height: 64),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 66),
                  child: BigButton('Start Cooking', onPressed: () {}),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
