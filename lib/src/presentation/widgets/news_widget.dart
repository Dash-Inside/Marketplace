import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  static const double containerMarginBottom = 18.0;
  static const double containerMarginLeftRight = 24.0;
  static const double borderRadius = 12.0;
  static const double paddingColumn = 21.0;
  static const double paddingCircleavAtrarLeft = 6.0;
  static const double circleAvatarRadius = 19.0;
  static const double iconSize = 19.0;
  static const double sizedBoxWidthBetweenChildren = 6.0;
  static const double textUserFontSize = 16.0;
  static const double textGroupFontSize = 14.0;
  static const double textNewsFontSize = 16.0;
  static const double paddingTextTop = 12.0;

  final String newsText;
  final String groupText;
  final String userName;

  const NewsWidget(
      {required this.groupText,
      required this.userName,
      required this.newsText,
      super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorPrimary = colorScheme.primary;
    final Color secondaryContainer = colorScheme.secondaryContainer;
    final Color colorOutline = colorScheme.outline;

    return Container(
      margin: EdgeInsets.only(
        bottom: containerMarginBottom,
        left: containerMarginLeftRight,
        right: containerMarginLeftRight,
      ),
      decoration: BoxDecoration(
        color: secondaryContainer,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(paddingColumn),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: paddingCircleavAtrarLeft),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: circleAvatarRadius,
                    backgroundColor: colorPrimary,
                    child: IconButton(
                      iconSize: iconSize,
                      icon: Icon(Icons.photo_camera),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: sizedBoxWidthBetweenChildren,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                          fontSize: textUserFontSize,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        groupText,
                        style: TextStyle(
                          fontSize: textGroupFontSize,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          color: colorOutline,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: paddingTextTop),
              child: Text(
                newsText,
                style: TextStyle(
                  fontSize: textNewsFontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.comment),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
