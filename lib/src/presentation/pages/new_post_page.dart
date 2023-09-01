import 'package:flutter/material.dart';
import 'package:marketplace/src/presentation/widgets/filled_button_widget.dart';

import '../widgets/custom_app_bar_widget.dart';

class NewPostPage extends StatelessWidget {
  static const double paddingAppBar = 12.0;
  static const double containerMargin = 16.0;
  static const double scrollPadding = 20.0;
  static const double borderRadius = 16.0;
  static const double paddingRow = 16.0;

  static const double sizedBoxButtonWidth = 102;
  static const double textStyleFontSize = 14.0;
  static const int textFieldMaxLines = 777;

  const NewPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorPrimary = colorScheme.primary;
    final Color colorTertiary = colorScheme.tertiary;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: paddingAppBar),
            child: CustomAppBarWidget(title: 'New Post'),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: containerMargin,
                right: containerMargin,
                top: containerMargin,
              ),
              child: TextField(
                maxLines: textFieldMaxLines,
                scrollPadding: EdgeInsets.all(scrollPadding),
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Write something...?',
                  hintStyle: TextStyle(
                    fontSize: textStyleFontSize,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(borderRadius),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(paddingRow),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilledButtonWidget(
                  color: colorTertiary,
                  hintText: 'Discard',
                  width: sizedBoxButtonWidth,
                ),
                FilledButtonWidget(
                  color: colorPrimary,
                  hintText: 'Publish',
                  width: sizedBoxButtonWidth,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
