import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/ui/color_styles.dart';
import 'package:flutter_recipe_app/ui/text_styles.dart';

class MediumButton extends StatefulWidget {
  final String text;
  final void Function() onPressed;

  const MediumButton(this.text, {super.key, required this.onPressed});

  @override
  State<MediumButton> createState() => _MediumButton();
}

class _MediumButton extends State<MediumButton> {
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
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isPressed ? ColorStyles.gray4 : ColorStyles.primary100,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 114,
              child: Text(
                widget.text,
                // Copy With가 런타임에 빌드가 되기 때문에 성능이 떨어질 수 있다.
                style: TextStyles.normalTextBold.copyWith(color: Colors.white),
              ),
            ),
            Icon(Icons.arrow_forward, size: 20, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
