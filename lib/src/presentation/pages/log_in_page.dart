import 'package:flutter/material.dart';
import 'package:marketplace/src/presentation/widgets/filled_button_widget.dart';
import 'package:marketplace/src/presentation/widgets/text_field_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'Dash Inside Market',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ),
            Spacer(),
            TextFieldWidget(hintText: 'email'),
            SizedBox(
              height: 16.0,
            ),
            TextFieldWidget(hintText: 'password'),
            Spacer(),
            FilledButtonWidget(
              hintText: 'Login',
              color: Color.fromRGBO(36, 180, 126, 1),
            ),
          ],
        ),
      ),
    );
  }
}
