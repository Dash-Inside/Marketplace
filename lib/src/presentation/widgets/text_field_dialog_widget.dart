import 'package:flutter/material.dart';

class TextFieldDialogWidget extends StatelessWidget {
  static const double sufixIconPaddingEditBottom = 8.0;

  final String hintText;

  const TextFieldDialogWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorOutline = colorScheme.outline;

    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        suffixIconColor: colorOutline,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(bottom: sufixIconPaddingEditBottom),
          child: Icon(Icons.edit_outlined),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
