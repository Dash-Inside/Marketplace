import 'package:flutter/material.dart';
import 'package:marketplace/src/presentation/widgets/custom_app_bar_widget.dart';
import 'package:marketplace/src/presentation/widgets/filled_button_widget.dart';

class CustomAppBarWithButtonWidget extends StatelessWidget {
  static const double stackSizedBoxHeight = 40.0;
  static const double textStyleHeight = 2.3;
  static const double textStyleFontSize = 14.0;
  static const double mediaQueryWidth = 32.0;
  static const double sizedBoxCircleAvatarHeight = 40.0;
  static const double radiusCircleAvatar = 19.0;
  static const double iconSizeCamera = 19.0;
  static const double roundedRectangleBorderRadius = 40.0;
  static const double elevationDialog = 16.0;
  static const double containerMargin = 16.0;
  static const double containerHeight = 524.0;
  static const double containerWidth = 366.0;
  static const double paddingTextFiledBottom = 20.0;
  static const double sufixIconPaddingEditBottom = 8.0;
  static const double paddingSimetric = 8.0;

  final String title;

  const CustomAppBarWithButtonWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorPrimary = colorScheme.primary;
    final Color colorTertiary = colorScheme.tertiary;
    final Color colorOutline = colorScheme.outline;

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
              child: IconButton(
                iconSize: iconSizeCamera,
                icon: Icon(Icons.photo_camera),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              roundedRectangleBorderRadius),
                        ),
                        elevation: elevationDialog,
                        child: Container(
                          margin: EdgeInsets.all(containerMargin),
                          height: containerHeight,
                          width: containerWidth,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: paddingTextFiledBottom),
                                child: CustomAppBarWidget(title: 'Username'),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Group',
                                  suffixIconColor: colorOutline,
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: sufixIconPaddingEditBottom),
                                    child: Icon(Icons.edit_outlined),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Description',
                                  suffixIconColor: colorOutline,
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: sufixIconPaddingEditBottom),
                                    child: Icon(Icons.edit_outlined),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                              ),
                              Spacer(),
                              FilledButtonWidget(
                                  hintText: 'Save', color: colorPrimary),
                              // SizedBox(
                              //   height: endSizedBoxHeight,
                              // ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: paddingSimetric),
                                child: FilledButtonWidget(
                                    hintText: 'Delete Account',
                                    color: colorTertiary),
                              ),
                              // SizedBox(height: endSizedBoxHeight),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
