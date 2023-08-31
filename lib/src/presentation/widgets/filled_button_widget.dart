import 'package:flutter/material.dart';

class FilledButtonWidget extends StatelessWidget {
  final String hintText;
  final Color color;
  const FilledButtonWidget(
      {required this.color, required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.0,
      width: double.infinity,
      child: FilledButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(88.0),
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          hintText,
          style: TextStyle(
            height: 1.0,
            fontSize: 13.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
