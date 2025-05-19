import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/ui/color_styles.dart';
import 'package:flutter_recipe_app/ui/text_styles.dart';

class SearchInputField extends StatelessWidget {
  final String placeHolder;
  final TextEditingController? controller;
  const SearchInputField({
    super.key,
    required this.placeHolder,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search, color: ColorStyles.gray4),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: ColorStyles.gray4),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: ColorStyles.primary80),
            ),
            hintText: placeHolder,
            hintStyle: TextStyles.smallTextRegular.copyWith(
              color: ColorStyles.gray4,
            ),
          ),
        ),
      ],
    );
  }
}
