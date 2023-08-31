import 'package:flutter/material.dart';
import 'package:marketplace/src/presentation/pages/home_page.dart';
import 'package:marketplace/src/presentation/pages/new_post_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color.fromRGBO(36, 180, 126, 1),
          surface: Colors.white,
          secondary: Colors.black,
          tertiary: Color.fromRGBO(255, 51, 51, 1),
        ),
      ),
      home: NewPostPage(),
    );
  }
}
