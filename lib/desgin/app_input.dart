import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  final String content;
  final TextEditingController? controller;
  final Icon prefixIcon;
  final VoidCallback ? onTapOutside;
  final InputDecoration? decoration;
  final bool? obscureText;
  final double width;

  const AppInput({super.key, required this.content,  this.controller, required this.prefixIcon, this.onTapOutside, this.decoration, this.obscureText,  this.width = 2.0});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },

      controller: controller,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            width: width,
            color: Theme.of(context).primaryColor,
          )),
          prefixIcon: prefixIcon,
          hintText: content,
          border:
              OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0))),
      obscureText: false, // Hide the entered text for passwords
    );
  }
}
