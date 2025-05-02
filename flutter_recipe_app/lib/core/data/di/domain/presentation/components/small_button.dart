import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/ui/color_styles.dart';
import 'package:flutter_recipe_app/ui/text_styles.dart';

class SmallButton extends StatefulWidget {
  final String text;
  final void Function() onPressed;

  const SmallButton(this.text, {super.key, required this.onPressed});

  @override
  State<SmallButton> createState() => _SmallButton();
}

class _SmallButton extends State<SmallButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        height: 44,
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
    );
  }
}
