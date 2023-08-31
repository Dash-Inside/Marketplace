import 'package:flutter/material.dart';

import '../widgets/custom_app_bar_widget.dart';

class NewPostPage extends StatelessWidget {
  const NewPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: CustomAppBarWidget(title: 'New Post'),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: Expanded(
              child: TextField(
                scrollPadding: EdgeInsets.all(20.0),
                autofocus: true,
                maxLines: 9999,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
