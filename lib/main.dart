import 'package:flashcards/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'pages/login_page.dart';
import 'pages/loading_page.dart';

void main() {
  runApp(Flashcards());
}

class Flashcards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        brightness: Brightness.dark,
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => LoadingPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
