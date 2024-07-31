import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String content;
  final Text? text;
  final ButtonStyle? style;
  final Color color,textColor;
  final VoidCallback onPressed;

  const AppButton({super.key, required this.content, this.text, this.style, required this.color, required this.textColor, required this.onPressed });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 327,
      child: FilledButton(

          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(color)
          ),
          onPressed: onPressed,
          child: Text(
            content,
            style: TextStyle(
                color: textColor),
          )),
    )

    ;
  }
}