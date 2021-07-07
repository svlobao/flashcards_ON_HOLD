import 'package:flutter/material.dart';

import 'flashcards/flashcard_template.dart';
import 'pages/login_page.dart';
import 'pages/loading_page.dart';
import 'pages/home_page.dart';
import 'pages/kanas_page.dart';
import 'pages/hiraganas_page.dart';
import 'pages/katakanas_page.dart';

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
        '/kanas': (context) => Kanas(),
        '/hiraganas': (context) => Hiraganas(),
        '/katakanas': (context) => Katakanas(),
        '/flashcard': (context) => FlashcardPagaTemplate(),
      },
    );
  }
}
