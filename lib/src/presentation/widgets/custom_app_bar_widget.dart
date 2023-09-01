import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  static const double stackSizedBoxHeight = 40.0;
  static const double textStyleHeight = 2.3;
  static const double textStyleFontSize = 14.0;
  static const double mediaQueryWidth = 32.0;
  static const double sizedBoxCircleAvatarHeight = 40.0;
  static const double radiusCircleAvatar = 19.0;
  static const double iconSizeCamera = 19.0;

  final String title;

  const CustomAppBarWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorPrimary = colorScheme.primary;
    return Stack(
      children: [
        SizedBox(
          height: stackSizedBoxHeight,
        ),
        Center(
          child: Text(
            title,
            style: TextStyle(
              height: textStyleHeight,
              fontSize: textStyleFontSize,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Positioned(
          right: MediaQuery.of(context).size.width / mediaQueryWidth,
          child: SizedBox(
            height: sizedBoxCircleAvatarHeight,
            child: CircleAvatar(
              radius: radiusCircleAvatar,
              backgroundColor: colorPrimary,
              child: Icon(
                Icons.photo_camera,
                size: iconSizeCamera,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
