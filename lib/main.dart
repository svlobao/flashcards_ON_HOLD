import 'package:flashcards/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Kanadventure());
}

class Kanadventure extends StatelessWidget {
  const Kanadventure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
      },
    );
  }
}
