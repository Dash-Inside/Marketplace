import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  TextFieldWidget({required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineBord = OutlineInputBorder(
      borderRadius: BorderRadius.circular(88.0),
      borderSide: BorderSide(
        color: Color.fromRGBO(36, 180, 126, 1),
        width: 1.0,
      ),
    );
    OutlineInputBorder outlineBord1 = OutlineInputBorder(
      borderRadius: BorderRadius.circular(88.0),
      borderSide: BorderSide(
        color: Color.fromRGBO(36, 180, 126, 1),
        width: 1.0,
      ),
    );

    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(8.0),
        isDense: true,
        focusedBorder: outlineBord,
        enabledBorder: outlineBord1,
        hintText: hintText,
        hintStyle: TextStyle(
          height: 1.0,
          fontSize: 13.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
