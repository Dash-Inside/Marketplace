import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
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
    return Container(
      margin: EdgeInsets.only(
        bottom: 18.0,
        left: 24.0,
        right: 24.0,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(232, 232, 232, 1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 19,
                    backgroundColor: Color.fromRGBO(36, 180, 126, 1),
                    child: IconButton(
                      iconSize: 19,
                      icon: Icon(Icons.photo_camera),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 6.0,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        groupText,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          color: Color.fromRGBO(110, 110, 110, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                newsText,
                style: TextStyle(
                  fontSize: 16.0,
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
