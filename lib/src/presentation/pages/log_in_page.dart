import 'package:flutter/material.dart';
import 'package:marketplace/src/presentation/widgets/filled_button_widget.dart';
import 'package:marketplace/src/presentation/widgets/text_field_widget.dart';

class LoginPage extends StatelessWidget {
  static const double containerMargin = 16.0;
  static const double textStyleFontSize = 24.0;
  static const double textStyleLetterSpacing = 0.5;
  static const double sizedBoxHeight = 16.0;
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorPrimary = colorScheme.primary;
    final Color colorSecondary = colorScheme.secondary;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(containerMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'Dash Inside Market',
              style: TextStyle(
                fontSize: textStyleFontSize,
                fontWeight: FontWeight.w500,
                letterSpacing: textStyleLetterSpacing,
                color: colorSecondary,
                fontStyle: FontStyle.italic,
              ),
            ),
            Spacer(),
            TextFieldWidget(hintText: 'Email'),
            SizedBox(
              height: sizedBoxHeight,
            ),
            TextFieldWidget(hintText: 'Password'),
            Spacer(),
            FilledButtonWidget(
              hintText: 'Login',
              color: colorPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
