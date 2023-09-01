import 'package:flutter/material.dart';

class FilledButtonWidget extends StatelessWidget {
  static const double sizedBoxHeight = 42.0;
  static const double borderRadius = 88.0;
  static const double textStyleHeight = 1.0;
  static const double textStyleFontSize = 13.0;

  final String hintText;
  final Color color;
  final double width;
  const FilledButtonWidget(
      {this.width = double.infinity,
      required this.color,
      required this.hintText,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizedBoxHeight,
      width: width,
      child: FilledButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius),
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          hintText,
          style: TextStyle(
            height: textStyleHeight,
            fontSize: textStyleFontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
