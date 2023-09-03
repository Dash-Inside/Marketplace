import 'package:flutter/material.dart';
import 'package:marketplace/src/presentation/widgets/custom_app_bar_widget.dart';
import 'package:marketplace/src/presentation/widgets/filled_button_widget.dart';
import 'package:marketplace/src/presentation/widgets/text_field_dialog_widget.dart';

class DialogWidget extends StatelessWidget {
  static const double roundedRectangleBorderRadius = 40.0;
  static const double elevationDialog = 16.0;
  static const double containerMargin = 16.0;
  static const double containerHeight = 524.0;
  static const double containerWidth = 366.0;
  static const double paddingTextFiledBottom = 20.0;
  static const double paddingSimetric = 8.0;

  const DialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorPrimary = colorScheme.primary;
    final Color colorTertiary = colorScheme.tertiary;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(roundedRectangleBorderRadius),
      ),
      elevation: elevationDialog,
      child: Container(
        margin: EdgeInsets.all(containerMargin),
        height: containerHeight,
        width: containerWidth,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: paddingTextFiledBottom),
              child: CustomAppBarWidget(title: 'Username'),
            ),
            TextFieldDialogWidget(hintText: 'Group'),
            TextFieldDialogWidget(hintText: 'Description'),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: paddingSimetric),
              child: FilledButtonWidget(hintText: 'Save', color: colorPrimary),
            ),
            FilledButtonWidget(
                hintText: 'Delete Account', color: colorTertiary),
          ],
        ),
      ),
    );
  }
}
