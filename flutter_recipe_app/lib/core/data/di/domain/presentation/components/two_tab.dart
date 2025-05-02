import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/ui/color_styles.dart';
import 'package:flutter_recipe_app/ui/text_styles.dart';

class TwoTab extends StatelessWidget {
  final List<String> labels;
  final int selectedIndex;

  const TwoTab({super.key, required this.labels, this.selectedIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 33,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isPressed ? ColorStyles.gray4 : ColorStyles.primary100,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.text,
                // Copy With가 런타임에 빌드가 되기 때문에 성능이 떨어질 수 있다.
                style: TextStyles.normalTextBold.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        Container(
          height: 33,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isPressed ? ColorStyles.gray4 : ColorStyles.primary100,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.text,
                // Copy With가 런타임에 빌드가 되기 때문에 성능이 떨어질 수 있다.
                style: TextStyles.normalTextBold.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SelectedTab extends StatelessWidget {
  final String text;

  const SelectedTab({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorStyles.primary100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            // Copy With가 런타임에 빌드가 되기 때문에 성능이 떨어질 수 있다.
            style: TextStyles.normalTextBold.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
