import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String title;

  const CustomAppBarWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 40.0,
        ),
        Center(
          child: Text(
            title,
            style: TextStyle(
              height: 2.3,
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Positioned(
          right: MediaQuery.of(context).size.width / 32,
          child: SizedBox(
            height: 40.0,
            child: CircleAvatar(
              radius: 19,
              backgroundColor: Color.fromRGBO(36, 180, 126, 1),
              child: Icon(
                Icons.photo_camera,
                size: 19.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
