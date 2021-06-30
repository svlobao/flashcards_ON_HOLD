import 'package:flutter/material.dart';

import 'pages/landing_page.dart';

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
      home: LandingPage(),
    );
  }
}
