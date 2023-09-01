import 'package:flutter/material.dart';
import 'package:marketplace/src/presentation/pages/home_page.dart';
import 'package:marketplace/src/presentation/pages/log_in_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: const Color(0xFF24B47E),
          surface: const Color(0xFFFFFFFF),
          secondary: const Color(0xFF000000),
          tertiary: const Color(0xFFFF3333),
          outline: const Color(0xFF6E6E6E),
          secondaryContainer: const Color(0xFFE8E8E8),
        ),
      ),
      home: LoginPage(),
    );
  }
}
