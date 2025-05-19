import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/core/presentation/components/search_input_field.dart';
import 'package:flutter_recipe_app/ui/color_styles.dart';
import 'package:flutter_recipe_app/ui/text_styles.dart';

class HomeScreen extends StatelessWidget {
  final String name;

  const HomeScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello $name', style: TextStyles.largeTextBold),
                    Text(
                      'What are you cooking today?',
                      style: TextStyles.smallerTextRegular.copyWith(
                        color: ColorStyles.gray3,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorStyles.secondary40,
                  ),
                  height: 40,
                  width: 40,
                  child: Image.asset('assets/image/profile_image.png'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(children: [SearchInputField(placeHolder: 'Search Recipe')]),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorStyles.secondary40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
