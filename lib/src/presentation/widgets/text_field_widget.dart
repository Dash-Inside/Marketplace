import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  static const double borderRadius = 88.0;
  static const double contetntPaddingHorizontal = 26.0;
  static const double borderSideWidth = 1.0;
  static const double hintTextStyleHeight = 1;
  static const double hintTextStyleFontSize = 13.0;
  static const double contetPaddingVertical = 14.0;

  final String hintText;
  TextFieldWidget({required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorPrimary = colorScheme.primary;
    OutlineInputBorder outlineBord = OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(
        color: colorPrimary,
        width: borderSideWidth,
      ),
    );

    return TextField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(
            horizontal: contetntPaddingHorizontal,
            vertical: contetPaddingVertical),
        focusedBorder: outlineBord,
        enabledBorder: outlineBord,
        hintText: hintText,
        hintStyle: TextStyle(
          height: hintTextStyleHeight,
          fontSize: hintTextStyleFontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
